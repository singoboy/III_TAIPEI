//  ViewController.m
//  m8_homework_string_append
#import "ViewController.h"

#import "Student.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"開始" );
    NSString * ans = @"\n";
    int LEVEL = 5;
    int Blanks = LEVEL - 1;
    int Leaves = 1;
    NSUInteger  HowMany = 5;
//
// fix 練習一 #1  執行此程式, 看會印出什麼?
    for (int i=1 ; i <= LEVEL ; i += 1 ) {
        ans = [ Student appendToStr: ans HowMany: Blanks What:@" " ];
        
        ans = [ Student appendToStr: ans HowMany: Leaves What:@"*" ];
        
        ans = [ Student appendToStr: ans HowMany: 1 What:@"\n" ];
        
        Blanks -= 1;
        Leaves += 2;
    }
    
    NSLog(@"%@" , ans );
    NSLog(@"Hello, World!");
}

@end
