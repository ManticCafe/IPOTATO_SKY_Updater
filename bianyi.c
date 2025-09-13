#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdbool.h>
#include <conio.h>
#include "mine_lib/mine.h"

#ifdef _WIN32
    #include <windows.h>
    #define MOVE_FILE(src, dest) MoveFileA(src, dest)
    #define DELETE_FILE(path) DeleteFileA(path)
    #define SLEEP_MS(ms) Sleep(ms)
#else
    #include <unistd.h>
    #define MOVE_FILE(src, dest) (rename(src, dest) == 0)
    #define DELETE_FILE(path) (remove(path) == 0)
    #define SLEEP_MS(ms) usleep(ms * 1000)
#endif

#define MB40 (40 * 1024 * 1024)

bool filesize(const char *filepath) {
    struct stat file_stat;
    if (stat(filepath, &file_stat) != 0) {
        return false;
    }
    if (S_ISREG(file_stat.st_mode) && file_stat.st_size > MB40) {
        return true;
    }
    return false;
}

bool filesize0(const char *filepath) {
    struct stat file_stat;
    if (stat(filepath, &file_stat) != 0) {
        return false;
    }
    if (S_ISREG(file_stat.st_mode) && file_stat.st_size > 0) {
        return true;
    }
    return false;
}

int main() {
    int key;

    system("color a");
    SetConsoleOutputCP(CP_UTF8);
    while ( 1 ) {
        int key;
        printf("=============================================================================\n");
        printf("土豆梦幻科技安装更新器制作助手:请先按下[1]编译file文件后再按下[2]编译安装器\n");
        printf("1.按下[1]将file中的文件进行编译\n2.按下[2]将文件编译成更新安装器\n3.按下[3]退出该程序\n");
        printf("=============================================================================\n");
        // scanf("%d",&num);
        key = _getch();
        switch (key) {

        case 49 :
            const char *filename = "packed_data.c";
            printf("更新文件正在编译中\n");
            animate_triple_dots(6000);
            system("python pack_folders.py");    
            if (filesize(filename)) {
                printf("编译完成\n");
                break;
            }
        break;

        case 50 :
            const char *filename1 = "folder_extractor.exe";
            printf("正在编译程序\n");
            animate_ellipsis(6000);
            system("gcc -o folder_extractor main.c packed_data.c zlib/*.c -Izlib");
            if (filesize0(filename1)) {
                printf("编译成功\n");
                break;
            }
        break;

        case 51 :
            return 0;
        break;

        default :
            printf("输入有误\n");

        }
    }
    return 0;
}