// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

//	只有 .h 文件，声明一个协议 Learn
//	声明协议，默认实现 NSObject 协议
@protocol Learn <NSObject>

//	默认是 @required
- (void) test3;

//	OC 是弱语法
//	虽然字面上说是必须实现，但编译器检查不出来
//	@required 字面上表示必须实现的方法
@required
- (void) test;

- (void) test1;

//	@optional 表示可选(可以实现，也可以实现)
@optional
- (void) test2;

@end
