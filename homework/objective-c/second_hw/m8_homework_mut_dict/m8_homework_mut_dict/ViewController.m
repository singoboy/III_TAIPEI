//  ViewController.m
//  m8_homework_mut_dict
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"開始");
    NSMutableDictionary * mut_dict ;
    mut_dict = [ NSMutableDictionary  new ];
    
// fix 練習  #1
//  在上面的 NSMutableDictionary 中,
//   以商品的唯一識別碼字串為鍵值加入 商品的名子
//   ,單價,及 購買數量.
//  請加入三個商品
    mut_dict =
    [
     @{
       @"AA" : @"NAME", @"BB" : @"PRICE", @"CC" : @"TOTAL", @"DRINK" : @(90), @"MILK" : @(100), @"BREAD" : @(150)
       }
     mutableCopy
     ]
    ;
// fix 練習  #2
//  再從上面的 NSMutableDictionary 中
//  算出三個商品的購買總價
//   請寫在這裡
    
    NSLog(@"算出三個商品的購買總價於此");
    int total ;
    total  = [mut_dict[@"DRINK"] intValue]  +  [mut_dict[@"MILK"] intValue]  + [mut_dict[@"BREAD"] intValue];
    NSLog(@"total= %d",total) ;
    NSLog(@"結束");
}

@end
