#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include <direct.h>
#include <conio.h>
#include <errno.h>
#include <sys/stat.h>
#include "zlib.h"

typedef struct {
    const char* name;
    const unsigned char* data;
    unsigned long size;
} FolderData;

extern FolderData folders[];
extern int folder_count;

void setColor(int forgCol) {
    HANDLE hStdOut = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(hStdOut, forgCol);
}

void resetColor() {
    setColor(7);
}

int delete_directory(const char* path);
int create_directory(const char* path);
int write_file(const char* path, const unsigned char* data, unsigned long size);
int extract_folder(const char* name, const unsigned char* data, unsigned long size);
BOOL is_admin();
void normalize_path(char* path);
unsigned char* decompress_data(const unsigned char* compressed_data, unsigned long compressed_size, unsigned long* decompressed_size);
void debug_print_hex(const unsigned char* data, int length);

BOOL Filter;

int main() {
    system("color 75");
    SetConsoleOutputCP(CP_UTF8);
    int key1,key2,key3;
    
    if (!is_admin()) {
        setColor(FOREGROUND_RED | FOREGROUND_GREEN);
        printf("请确保以管理员身份运行\n");
        printf("按任意键继续...\n");
        _getch();
    }
    
    setColor(FOREGROUND_BLUE);
    printf("土豆梦幻科技空岛更新器: Enter键继续, ESC键退出\n");
    key1 = _getch();
    
    if (key1 == 27) { //ESC
        printf("程序已退出。\n");
        return 0;
    }
    
    setColor(FOREGROUND_BLUE);
    printf("是否跳过异常文件(推荐跳过):Enter跳过，按下其他键取消跳过\n");
    key3 = _getch();

    if (key3 != 13) {
        BOOL* Filter1 = &Filter;
        *Filter1 = TRUE;
    }
    
    setColor(FOREGROUND_BLUE);
    printf("即将更新, 请确保游戏实例已关闭, Enter键继续\n");
    key2 = _getch();
    
    if (key2 != 13) { //!回车键
        printf("操作已取消。\n");
        return 0;
    }
    setColor(FOREGROUND_BLUE);
    printf("开始释放封装文件\n");
    
    setColor(FOREGROUND_BLUE);
    printf("开始删除现有文件夹...\n");
    
    const char* target_folders[] = {
        "scripts", "config", "customnpcs", "minemenu", "resources"
    };
    
    for (int i = 0; i < 5; i++) {
        setColor(FOREGROUND_BLUE);
        printf("删除文件夹: %s\n", target_folders[i]);
        if (delete_directory(target_folders[i])) {
            setColor(FOREGROUND_BLUE);
            printf("  成功删除 %s\n", target_folders[i]);
        } else {
            DWORD error = GetLastError();
            if (error == ERROR_FILE_NOT_FOUND || error == ERROR_PATH_NOT_FOUND) {
                setColor(FOREGROUND_RED);
                printf("  文件夹 %s 不存在，跳过删除\n", target_folders[i]);
            } else {
                setColor(FOREGROUND_RED);
                printf("  警告: 无法删除 %s (错误代码: %lu)\n", target_folders[i], error);
            }
        }
    }
    
    setColor(FOREGROUND_BLUE);
    printf("\n开始释放封装文件夹...\n");
    
    for (int i = 0; i < folder_count; i++) {
        char folder_name[MAX_PATH];
        strncpy(folder_name, folders[i].name, MAX_PATH);
        int len = strlen(folder_name);
        if (len > 0 && folder_name[len-1] == '1') {
            folder_name[len-1] = '\0';
        }
        
        setColor(FOREGROUND_BLUE);
        printf("释放文件夹: %s (原始名称: %s)\n", folder_name, folders[i].name);
        if (extract_folder(folder_name, folders[i].data, folders[i].size)) {
            setColor(FOREGROUND_GREEN);
            printf("  成功释放 %s\n", folder_name);
        } else {
            setColor(FOREGROUND_RED);
            printf("  错误: 无法释放 %s\n", folder_name);
            setColor(FOREGROUND_BLUE);
            printf("按任意键退出...\n");
            _getch();
            return 1;
        }
    }
    
    setColor(FOREGROUND_GREEN);
    printf("\n所有文件夹已成功释放!\n");

    setColor(FOREGROUND_GREEN);
    printf("更新完成! 按任意键退出...\n");
    _getch();
    
    return 0;
}

BOOL is_admin() {
    BOOL fIsAdmin = FALSE;
    DWORD dwError = ERROR_SUCCESS;
    PSID pAdministratorsGroup = NULL;
    
    SID_IDENTIFIER_AUTHORITY NtAuthority = SECURITY_NT_AUTHORITY;
    if (!AllocateAndInitializeSid(
        &NtAuthority, 
        2, 
        SECURITY_BUILTIN_DOMAIN_RID, 
        DOMAIN_ALIAS_RID_ADMINS, 
        0, 0, 0, 0, 0, 0, 
        &pAdministratorsGroup)) {
        return FALSE;
    }
    
    if (!CheckTokenMembership(NULL, pAdministratorsGroup, &fIsAdmin)) {
        dwError = GetLastError();
    }
    
    if (pAdministratorsGroup) {
        FreeSid(pAdministratorsGroup);
    }
    
    return fIsAdmin;
}

void normalize_path(char* path) {
    for (int i = 0; path[i] != '\0'; i++) {
        if (path[i] == '/') {
            path[i] = '\\';
        }
    }
}

int delete_directory(const char* path) {
    char normalized_path[MAX_PATH];
    strncpy(normalized_path, path, MAX_PATH);
    normalize_path(normalized_path);
    
    WIN32_FIND_DATA findFileData;
    HANDLE hFind;
    char searchPath[MAX_PATH];
    char filePath[MAX_PATH];
    
    snprintf(searchPath, sizeof(searchPath), "%s\\*", normalized_path);
    
    hFind = FindFirstFile(searchPath, &findFileData);
    if (hFind == INVALID_HANDLE_VALUE) {
        return 0; 
    }
    
    do {
        if (strcmp(findFileData.cFileName, ".") == 0 || 
            strcmp(findFileData.cFileName, "..") == 0) {
            continue;
        }
        
        snprintf(filePath, sizeof(filePath), "%s\\%s", normalized_path, findFileData.cFileName);
        
        if (findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
            delete_directory(filePath);
        } else {
            SetFileAttributes(filePath, FILE_ATTRIBUTE_NORMAL);
            DeleteFile(filePath);
        }
    } while (FindNextFile(hFind, &findFileData) != 0);
    
    FindClose(hFind);
    
    return RemoveDirectory(normalized_path);
}

int create_directory(const char* path) {
    char normalized_path[MAX_PATH];
    strncpy(normalized_path, path, MAX_PATH);
    normalize_path(normalized_path);
    
    if (_access(normalized_path, 0) == 0) {
        struct _stat st;
        _stat(normalized_path, &st);
        if (st.st_mode & _S_IFDIR) {
            return 1; 
        }
        return 0; 
    }
    
    char* p = normalized_path;
    if (p[0] && p[1] == ':') {
        p += 2; 
    }
    if (p[0] == '\\') {
        p++; 
    }
    
    while (*p) {
        while (*p && *p != '\\') {
            p++;
        }
        
        char temp = *p;
        *p = 0; 
        
        if (_mkdir(normalized_path) != 0) {
            if (errno != EEXIST) {
                *p = temp;
                return 0; 
            }
        }
        
        if (temp) {
            *p = temp;
            p++;
        }
    }
    
    return 1;
}

int write_file(const char* path, const unsigned char* data, unsigned long size) {
    char normalized_path[MAX_PATH];
    strncpy(normalized_path, path, MAX_PATH);
    normalize_path(normalized_path);
    
    char* last_slash = strrchr(normalized_path, '\\');
    if (last_slash) {
        *last_slash = '\0';
        if (!create_directory(normalized_path)) {
            DWORD error = GetLastError();
            setColor(FOREGROUND_RED);
            printf("    错误: 无法创建目录 %s (错误代码: %lu)\n", normalized_path, error);
            *last_slash = '\\';
            return 0;
        }
        *last_slash = '\\';
    }
    
    FILE* file = fopen(normalized_path, "wb");
    if (!file) {
        DWORD error = GetLastError();
        setColor(FOREGROUND_RED);
        printf("    错误: 无法打开文件 %s 进行写入 (错误代码: %lu)\n", normalized_path, error);
        return 0;
    }
    
    size_t written = fwrite(data, 1, size, file);
    fclose(file);
    
    if (written != size) {
        setColor(FOREGROUND_RED);
        printf("    错误: 文件写入不完整 %s (已写入: %zu, 期望: %lu)\n", 
               normalized_path, written, size);
        return 0;
    }
    
    return 1;
}

void debug_print_hex(const unsigned char* data, int length) {
    for (int i = 0; i < length; i++) {
        printf("%02x ", data[i]);
        if ((i + 1) % 16 == 0) printf("\n");
    }
    printf("\n");
}

unsigned char* decompress_data(const unsigned char* compressed_data, unsigned long compressed_size, unsigned long* decompressed_size) {
    unsigned long buffer_size = compressed_size * 4;
    unsigned char* buffer = (unsigned char*)malloc(buffer_size);
    
    if (!buffer) {
        setColor(FOREGROUND_RED);
        printf("  错误: 内存分配失败\n");
        return NULL;
    }
    
    z_stream stream;
    memset(&stream, 0, sizeof(stream));
    
    stream.next_in = (Bytef*)compressed_data;
    stream.avail_in = compressed_size;
    stream.next_out = (Bytef*)buffer;
    stream.avail_out = buffer_size;
    
    int ret = inflateInit(&stream);
    if (ret != Z_OK) {
        setColor(FOREGROUND_RED);
        printf("  错误: zlib初始化失败: %d\n", ret);
        free(buffer);
        return NULL;
    }
    
    do {
        ret = inflate(&stream, Z_FINISH);
        
        if (ret == Z_BUF_ERROR) {
            unsigned long new_size = buffer_size * 2;
            unsigned char* new_buffer = (unsigned char*)realloc(buffer, new_size);
            
            if (!new_buffer) {
                setColor(FOREGROUND_RED);
                printf("  错误: 内存重新分配失败\n");
                inflateEnd(&stream);
                free(buffer);
                return NULL;
            }
            
            buffer = new_buffer;
            stream.next_out = (Bytef*)(buffer + stream.total_out);
            stream.avail_out = new_size - stream.total_out;
            buffer_size = new_size;
        } else if (ret != Z_OK && ret != Z_STREAM_END) {
            setColor(FOREGROUND_RED);
            printf("  错误: 解压缩失败，错误代码: %d\n", ret);
            inflateEnd(&stream);
            free(buffer);
            return NULL;
        }
    } while (ret != Z_STREAM_END);
    
    inflateEnd(&stream);
    *decompressed_size = stream.total_out;
    
    setColor(FOREGROUND_BLUE);
    printf("  解压缩成功: 压缩大小=%lu, 解压大小=%lu\n", compressed_size, *decompressed_size);
    
    return buffer;
}

int extract_folder(const char* name, const unsigned char* data, unsigned long size) {
    if (data == NULL || size == 0) {
        setColor(FOREGROUND_RED);
        printf("  错误: 无效的数据指针或大小\n");
        return 0;
    }
    
    setColor(FOREGROUND_BLUE);
    printf("  开始处理数据，大小: %lu\n", size);
    
    unsigned long decompressed_size;
    unsigned char* decompressed_data = decompress_data(data, size, &decompressed_size);
    
    if (!decompressed_data) {
        setColor(FOREGROUND_RED);
        printf("  错误: 数据解压缩失败\n");
        return 0;
    }
    
    if (!create_directory(name)) {
        setColor(FOREGROUND_RED);
        printf("  错误: 无法创建目录 %s\n", name);
        free(decompressed_data);
        return 0;
    }
    
    unsigned long offset = 0;
    unsigned int file_count;
    
    if (offset + sizeof(file_count) > decompressed_size) {
        setColor(FOREGROUND_RED);
        printf("  错误: 数据不足以读取文件数量 (offset=%lu, size=%lu)\n", 
               offset + sizeof(file_count), decompressed_size);
        free(decompressed_data);
        return 0;
    }
    
    memcpy(&file_count, decompressed_data + offset, sizeof(file_count));
    offset += sizeof(file_count);
    
    setColor(FOREGROUND_BLUE);
    printf("  包含 %u 个文件\n", file_count);
    
    for (unsigned int i = 0; i < file_count; i++) {
        if (offset + sizeof(unsigned short) > decompressed_size) {
            setColor(FOREGROUND_RED);
            printf("  错误: 数据不足以读取文件名长度 (文件 %d)\n", i);
            free(decompressed_data);
            return 0;
        }
        
        unsigned short name_length;
        memcpy(&name_length, decompressed_data + offset, sizeof(name_length));
        offset += sizeof(name_length);
        
        if (name_length == 0 || name_length > MAX_PATH - 1) {
            setColor(FOREGROUND_RED);
            printf("  错误: 文件名长度无效: %u (文件 %d)\n", name_length, i);
            free(decompressed_data);
            return 0;
        }
        
        if (offset + name_length > decompressed_size) {
            setColor(FOREGROUND_RED);
            printf("  错误: 数据不足以读取文件名 (文件 %d)\n", i);
            free(decompressed_data);
            return 0;
        }
        
        char filename[MAX_PATH];
        memcpy(filename, decompressed_data + offset, name_length);
        filename[name_length] = '\0';
        offset += name_length;
        
        if (offset + sizeof(unsigned long) > decompressed_size) {
            setColor(FOREGROUND_RED);
            printf("  错误: 数据不足以读取文件大小 (文件 %d: %s)\n", i, filename);
            free(decompressed_data);
            return 0;
        }
        
        unsigned long file_size;
        memcpy(&file_size, decompressed_data + offset, sizeof(file_size));
        offset += sizeof(file_size);
            
        if (file_size == 0 && Filter == TRUE) {
            setColor(FOREGROUND_RED);
            printf("  错误: 文件大小为零 (文件 %d: %s)\n", i, filename);
            free(decompressed_data);
            return 0;
        }
        
        if (offset + file_size > decompressed_size) {
            setColor(FOREGROUND_RED);
            printf("  错误: 文件大小超出数据范围 (文件 %d: %s, 大小=%lu, 剩余数据=%lu)\n", 
                   i, filename, file_size, decompressed_size - offset);
            free(decompressed_data);
            return 0;
        }
        
        unsigned char* file_data = (unsigned char*)malloc(file_size);
        if (file_data == NULL) {
            setColor(FOREGROUND_RED);
            printf("  错误: 内存分配失败 (文件 %d: %s)\n", i, filename);
            free(decompressed_data);
            return 0;
        }
        memcpy(file_data, decompressed_data + offset, file_size);
        offset += file_size;
        
        char full_path[MAX_PATH];
        snprintf(full_path, sizeof(full_path), "%s\\%s", name, filename);
        normalize_path(full_path);
        
        if (write_file(full_path, file_data, file_size)) {
            setColor(FOREGROUND_BLUE);
            printf("    已创建: %s (%lu 字节)\n", filename, file_size);
        } else {
            setColor(FOREGROUND_RED);
            printf("    错误: 无法创建文件 %s\n", filename);
            free(file_data);
            free(decompressed_data);
            return 0;
        }
        
        free(file_data);
    }
    
    free(decompressed_data);
    return 1;
}