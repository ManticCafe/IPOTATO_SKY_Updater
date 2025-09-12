#ifndef PACKED_DATA_H
#define PACKED_DATA_H

typedef struct {
    const char* name;
    const unsigned char* data;
    unsigned long size;
} FolderData;

extern FolderData folders[];
extern int folder_count;

#endif