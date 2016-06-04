//
//  ViewController.m
//  object_homework
//
//  Created by GaryFan on 2016/5/26.
//  Copyright © 2016年 user12. All rights reserved.
//

#import "ViewController.h"
#import "tool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //第一題  1到100總和
    int total = 0 ;
    for  (int i ;i<=100;i++ ){
        total = total + i ;
    }
    
    printf("total= %d  \n" ,total) ;
    
    //第二題 99乘法
    for  (int a=1 ;a<=9 ;a++){
        for (int b=1 ; b<=9 ; b++){
            
            printf(" %d",a);
            printf("*");
            printf("%d",b);
            printf("=");
            if(a*b <10){
                printf(" %d",a*b);
            }
            else{
                printf("%d",a*b);
            }
            
        }
        printf("\n");
    }
    
    // 第三題  聖誕樹
    for (int x = 7 ,y = 1 ; x > 0; x-- ,y += 2) {
        //            char  spec = " ";
        //            char  star = "*" ;
        //            char totalSpec = "" ;
        //            char totalStar = "" ;
        
        NSString *spec = @" ";
        NSString *star = @"*";
        NSString *totalSpec = @"";
        NSString *totalStar = @"";
        NSString *total = @"";
        for (int i = x; i > 0; i--) {
            //               totalSpec +=  spec ;
            totalSpec= [NSString stringWithFormat:@"%@%@", totalSpec,spec];
        }
        
        for (int j = 1; j <= y ; j++)
        {
            //                totalStar +=  star ;
            totalStar= [NSString stringWithFormat:@"%@%@", totalStar ,star];
        }
        total= [NSString stringWithFormat:@"%@%@", totalSpec ,totalStar];
        
        //r    NSLog(@"%@",total);
        printf("%s \n", [total UTF8String]);
    }
    
    //第三題 聖誕樹 ver2
    
    printf("%s","\n3、聖誕樹：\n");
    int lines = 7;
    
    for(int i=0;i<lines;i++) {
        
        for(int j=1;j<lines-i;j++) { // 印空白…
            printf(" ");
        }
        
        for(int j=0;j<(2*i+1);j++){ // 印星星…
            printf("*");
        }
        printf("\n");
    }
    
    //第四題 判斷6到15最小不是質數
     // version 1  函數呼叫
    int number;
    for (int index = 6; index <= 15 ; index++ ){
        if(judePrime(index)){
            number = index;
            break ;
        }
    }
    NSLog(@"ver1 最小不是質數是 %d" , number);
    
     // version 2 物件方法呼叫
    int number2;
    tool  *obTool = [[tool alloc] init ] ;
    for (int index = 6; index <= 15 ; index++ ){
        if([obTool isNotPrime:index secondNumber:0]){
            number = index;
            break ;
        }
    }
    NSLog(@"ver2 最小不是質數是 %d" , number);
    
    
    //第五題 range
    
    int age = arc4random()%101 ;     // 年紀設定在 0~100
    NSLog(@"age= %d" ,age);
//  18...29,65...74:
    if((18<=age&&age<=29)  ||(65<=age&&age<=74)){
        NSLog(@"恭喜有補助 age = %d" ,age);
    }
    else{
        NSLog(@"沒有補助 age = %d" ,age);
    }
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

   bool judePrime(int a ){
       int divisor = 2 ;
       while(divisor < a)
       {
           if(a % divisor == 0){
               return true ;
           }
           divisor++ ;
       }
       return false;
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
