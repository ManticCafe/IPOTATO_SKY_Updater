#ifndef CONSOLE_ELLIPSIS_H
#define CONSOLE_ELLIPSIS_H

#include <stdio.h>
#include <time.h>

#ifdef _WIN32
    #include <windows.h>
    #define SLEEP_MS(ms) Sleep(ms)
#else
    #include <unistd.h>
    #define SLEEP_MS(ms) usleep(ms * 1000)
#endif

// 显示动态省略号（一个点）
void animate_single_dot(int duration_ms) {
    clock_t start_time = clock();
    int count = 0;
    
    while ((clock() - start_time) * 1000 / CLOCKS_PER_SEC < duration_ms) {
        printf("\r.");
        fflush(stdout);
        SLEEP_MS(250);
        
        printf("\r ");
        fflush(stdout);
        SLEEP_MS(250);
        
        count++;
        if (count > duration_ms / 500) break;
    }
    printf("\r");
}

// 显示动态省略号（两个点）
void animate_double_dots(int duration_ms) {
    clock_t start_time = clock();
    int count = 0;
    
    while ((clock() - start_time) * 1000 / CLOCKS_PER_SEC < duration_ms) {
        printf("\r..");
        fflush(stdout);
        SLEEP_MS(250);
        
        printf("\r  ");
        fflush(stdout);
        SLEEP_MS(250);
        
        count++;
        if (count > duration_ms / 500) break;
    }
    printf("\r");
}

// 显示动态省略号（三个点）
void animate_triple_dots(int duration_ms) {
    clock_t start_time = clock();
    int count = 0;
    
    while ((clock() - start_time) * 1000 / CLOCKS_PER_SEC < duration_ms) {
        printf("\r...");
        fflush(stdout);
        SLEEP_MS(250);
        
        printf("\r   ");
        fflush(stdout);
        SLEEP_MS(250);
        
        count++;
        if (count > duration_ms / 500) break;
    }
    printf("\r");
}

// 显示动态省略号（循环显示1-3个点）
void animate_ellipsis(int duration_ms) {
    clock_t start_time = clock();
    int count = 0;
    
    while ((clock() - start_time) * 1000 / CLOCKS_PER_SEC < duration_ms) {
        printf("\r.");
        fflush(stdout);
        SLEEP_MS(250);
        
        printf("\r..");
        fflush(stdout);
        SLEEP_MS(250);
        
        printf("\r...");
        fflush(stdout);
        SLEEP_MS(250);
        
        printf("\r   ");
        fflush(stdout);
        SLEEP_MS(250);
        
        count++;
        if (count > duration_ms / 1000) break;
    }
    printf("\r");
}

#endif // CONSOLE_ELLIPSIS_H