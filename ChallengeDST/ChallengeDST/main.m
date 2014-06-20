//
//  main.m
//  ChallengeDST
//
//  Created by Chris King on 20/06/2014.
//  Copyright (c) 2014 Chris King. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // First of all, find out when it is - actually not needed, but added for personal gratification
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The date is %@", now);
        
        // Create a new NSTimeZone object myTimeZone containing the system's timezone
        NSTimeZone *myTimeZone = [[NSTimeZone alloc] init];
        myTimeZone = [NSTimeZone systemTimeZone];
        // Create a new object today which contains a bool which defines whether it is DST in the myTimeZone timezone
        bool isDST = [myTimeZone isDaylightSavingTime];
        
        if (isDST == YES) {
            NSLog(@"It is Daylight Saving Time and your timezone is %@", myTimeZone);
        } else {
            NSLog(@"It is NOT Daylight Saving Time and your timezone is %@", myTimeZone);
        }
        
    }
    return 0;
}

