//  Answer.m
#import "Answer.h"

@implementation Answer

-(void) appendTo: (NSMutableString *) str  HowMany: (NSUInteger) howMany  What: (NSString *) what  {
//
// fix 練習二 #2 請在 str 字串後面,    重複串接
//    howMany 次 的 what 字串.
//
//   請寫在這裡
    for (int i = 1; i<= howMany ; i++) {
        [str appendString:what];
    }

}

@end
