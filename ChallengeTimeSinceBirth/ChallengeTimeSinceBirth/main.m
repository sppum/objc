//
//  main.m
//  ChallengeTimeSinceBirth
//
//  Created by Chris King on 18/06/2014.
//  Copyright (c) 2014 Chris King. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // What is the time now?
        NSDate *now = [NSDate date];
        
        // What was the time when I was born? Assuming it was midnight and one second for ease
        NSDateComponents *birthdate = [[NSDateComponents alloc] init];
        [birthdate setYear:1973];
        [birthdate setMonth:4];
        [birthdate setDay:1];
        [birthdate setHour:0];
        [birthdate setMinute:0];
        [birthdate setSecond:1];
        
        // Initialise a gregorian calendar at g
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        // Set the date of birth using the birthdate components specified above
        NSDate *dateOfBirth = [g dateFromComponents:birthdate];
        
        // Calculate the amount of seconds which have elapsed since that momentus day
        
        double d = [now timeIntervalSinceDate:dateOfBirth];
        
        // And erm, show me
        NSLog(@"It has been %f seconds since I was born", d);
    }
    return 0;
}

