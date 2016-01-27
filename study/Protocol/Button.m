// create by zt
// create on 2016-1-17

#import "Button.h"

@implementation Button

- (void) dealloc {
//	释放代理，即继承 NSObject 的成员变量
	[_delegate release];
	
	[super dealloc];
}

//	按钮被点击了，触发监听器
- (void) click {
//	NSLog(@"事件触发");
	
//	触发事件
//	推荐使用下面的方法，进行是否实现了协议的方法
//	避免没有实现时，报错
//	[_delegate onClick: self];
	
//	编译器检查不出来是否实现了协议中的某个方法
//	使用 内部的 @selector 来检测
//	避免某些情况下没有实现协议中的方法报找不到方法的错误
//	selector 当做是方法
//	onClick: 是方法名称
//	如果 _delegate 实现了 onClick: 这个方法
	if([_delagate resondsToSelector:@selector(onClick:)]) {
//		通知监听器哪个按钮被点击了	
		[_delegate onClick: self];
	} else {
		NSLog(@"监听器没没有实现 onClick 方法");
	}
}

@end
