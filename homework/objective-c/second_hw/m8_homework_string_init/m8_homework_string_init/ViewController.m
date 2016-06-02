//  ViewController.m
//  m8_homework_string_init
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * T = @"student" ;
    int       N        = arc4random()%16 + 1;
    NSString * R  ;
    NSLog(@"開始");

//
// fix 練習一 #1 請將 T 所參考到的字串後面
//      , 串接 N 變數所代表的整數內容
//      請將串接的結果字串存到 R 變數
//    
//     請寫在這裡
     NSString * strFromInt = [NSString stringWithFormat:@"%d", N ];    
     R = [T stringByAppendingFormat:  strFromInt];
    
    NSLog(@"###############");
    NSLog(@"%@", R );
    NSLog(@"$$$$$$$$$$$$$$$");
    NSString * S;
    S = [NSString stringWithFormat:@"%@%d", T, N ];
    BOOL 是ㄧ樣的 = NO;
    是ㄧ樣的 =  [ R isEqualToString: S ];
    if(是ㄧ樣的) {
        NSLog(@"是ㄧ樣的, R 是 %@  而 S 是 %@", R, S);
    } else {
        NSLog(@"不ㄧ樣,   R 是 %@  而 S 是 %@", R, S );
    }
    NSLog(@"&&&&&&&&&&&&&&&");
    NSLog(@"結束");
    
}

@end
