import os
import zlib
import struct

def pack_folder(folder_path):
    files = []
    
    for root, dirs, filenames in os.walk(folder_path):
        for filename in filenames:
            filepath = os.path.join(root, filename)
            relpath = os.path.relpath(filepath, folder_path)
            
            with open(filepath, 'rb') as f:
                data = f.read()
                
            files.append((relpath.replace('\\', '/'), data))
    
    packed_data = bytearray()
    
    packed_data.extend(struct.pack('<I', len(files)))
    
    for relpath, data in files:
        encoded_path = relpath.encode('utf-8')
        packed_data.extend(struct.pack('<H', len(encoded_path)))
        packed_data.extend(encoded_path)
        
        packed_data.extend(struct.pack('<I', len(data)))
        packed_data.extend(data)
    
    compressed = zlib.compress(packed_data)
    return compressed

def generate_c_code(folders):
    with open('packed_data.c', 'w') as f:
        f.write('#include "packed_data.h"\n\n')
        
        folder_count = len(folders)
        f.write('FolderData folders[] = {\n')
        
        for name, data in folders:
            f.write('    {"%s",\n"'
                    % name.replace('1', ''))  
            
            for i, byte in enumerate(data):
                if i % 20 == 0:
                    f.write('"\n"')
                f.write('\\x%02x' % byte)
            
            f.write('", %d},\n' % len(data))
        
        f.write('};\n\n')
        f.write('int folder_count = %d;\n' % folder_count)

if __name__ == '__main__':
    folders_to_pack = [
        'scripts1',
        'config1', 
        'customnpcs1',
        'minemenu1',
        'resources1'
    ]
    
    packed_folders = []
    
    for folder in folders_to_pack:
        if os.path.exists(folder):
            print(f'正在打包文件夹: {folder}')
            packed_data = pack_folder(folder)
            packed_folders.append((folder, packed_data))
        else:
            print(f'警告: 文件夹 {folder} 不存在')
    
    generate_c_code(packed_folders)
    print('已生成 packed_data.c 文件')