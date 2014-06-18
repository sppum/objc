//
//  main.c
//  TimeChallenge
//
//  Created by Chris King on 18/06/2014.
//  Copyright (c) 2014 Chris King. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    long timeInTheFuture = secondsSince1970 + 4000000;
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    
    struct tm future;
    localtime_r(&timeInTheFuture, &future);
    
    printf("It has been %ld seconds since the start of epoch, which makes the time now %d:%d:%d\n", secondsSince1970, now.tm_hour, now.tm_min, now.tm_sec);
    
    printf("In 4 million seconds it will have been %ld seconds since the start of epoch and the date shall be %d-%d-%d\n", timeInTheFuture, future.tm_mday, future.tm_mon + 1, future.tm_year + 1900);
    
    return 0;
}

