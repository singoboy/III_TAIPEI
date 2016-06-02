//
//  ViewController.swift
//  homework
//
//  Created by user12 on 2016/5/24.
//  Copyright © 2016年 user12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //第一題 switch case
        var age = arc4random()%101      // 年紀設定在 0~100
        //age = 29
        print("age=\(age)")
        switch age {
        case  18...29,65...74:
            print("恭喜獲得輔助")
        default:
            print("再接再厲")
        }
        
        //第二題 99乘法
        for  Y in 1.stride(to: 10, by: 1){
            for X in 1.stride(to: 10, by: 1){
                print( "\(Y)*\(X)= \(Y*X < 10 ? " " : "") \(Y*X ) " ,terminator:"")
                
            }
            print()
        }
        
        // 第三題  聖誕樹
        for var x = 7 ,y = 1 ; x > 0; x-- ,y += 2 {
            let  spec = " "
            let  star = "*"
            var totalSpec = ""
            var totalStar = ""
            
            for var i = x; i > 0; i-- {
                //  print("x=\(x)")
                totalSpec +=  spec
            }
            
            for var j = 1; j <= y ; j++
            {
                //  print("y=\(y)")
                totalStar +=  star
            }
            
            print(totalSpec + totalStar )
        }
        
        //第四題  1到100總和
        var X = 1
        var total = 0
        for  _ in 1...100 {
            total = total + X
            X = X + 1
        }
        
        print("total=\(total)")
        
        //第五題判斷6~15中最小且不是質數的是 （函式呼叫）
    
        var min :Int?
        for var index = 6; index <= 15 ; index++ {
            print("index is \(index)")
            if(ViewController.IsPrime(index)){
             min = index
             break
            }
        }
        
        print("6~15中最小且不是質數的是\(min)")
        
        //        var number = Int(arc4random()%7 + 9 ) //隨機6到15
        //        print("number=\(number)")
        //
        //        var answer = ViewController.IsPrime(number)
        //        print("\(number) 是否是質數  \(answer)")
        
        
        //第三題  version 2
        print("\n二、聖誕樹\n")
        var lines = 7  ;
        for (var a = 0 ; a < lines ;a++) {
        
            for(var b=1 ; b < lines-a ; b++ ){
                print(" ",terminator:"") ;
            }
            for(var b=0 ; b < (2*a+1);b++ ){
                print("*",terminator:"") ;
            }
            print("");
        
        }
        
        print("\n============")
        
    }
    
    class func IsPrime(p:Int)  -> Bool
    {
        var divisor = 2
        while(divisor < p)
        {
            if(p % divisor == 0){
            return true
            }
            divisor++
        }
        return false
    }
 

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

