// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

//	声明多个协议使用 ',' 号隔开
//	协议声明
@protocol Study, Learn;

//	同时实现两个协议
@interface Student : NSObject <Study, Learn>


@end

