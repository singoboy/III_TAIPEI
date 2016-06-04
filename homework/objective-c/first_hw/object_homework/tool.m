//
//  tool.m
//  object_homework
//
//  Created by GaryFan on 2016/6/4.
//  Copyright © 2016年 user12. All rights reserved.
//

#import "tool.h"

@implementation tool

-(BOOL *)isNotPrime :(int) number secondNumber:(int) number2
{
    int divisor = 2 ;
    while(divisor < number)
    {
        if(number % divisor == 0){
            return true ;
        }
        divisor++ ;
    }
    return false;
}
@end
