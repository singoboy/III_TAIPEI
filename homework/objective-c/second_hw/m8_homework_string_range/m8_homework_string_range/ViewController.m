//  ViewController.m
//  m8_homework_string_range
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString * rv = @"That student in this room is studying hard"  ;
    
    NSString * aString = @"student" ;
    
    NSRange  found ;
    NSLog(@"開始");
    NSLog(@"@@@@@@@@@@@@@@@@");
//
// fix 練習一 #1
//  請在此 rv 字串中找出出現 aString 字串物件的範圍
//  註: 出現的範圍  請用 NSRange 來表示
//     請寫在這裡
    
    found = [rv rangeOfString:aString];
    
    if (found.location!=NSNotFound)
    {
        //得到字符串的位置和长度
        NSLog(@"%d,%d",found.location,found.length);
        NSLog(@"my range is %@", NSStringFromRange(found));
    }
    else
    {
        NSLog(@"没有发现",nil);
    }
    NSLog(@"################");
    NSLog(@"Hello, World!");
}

@end
