//  Student.m
#import "Student.h"

@implementation Student

+( NSString * ) reverse:(NSString *) str
{
    NSString *  rv;
    rv = str;
// fix 練習二 #2 請將 str 字串頭尾顛倒,
//  再將結果字串當作傳回值回傳
//  請寫在這裡
    NSMutableString *result = [NSMutableString stringWithString:@""];
    for (long i = str.length - 1; i >= 0; i--) {
        [result appendFormat:@"%c", [str characterAtIndex:i]];
    }
    return (NSString *)result;
    
}


@end
