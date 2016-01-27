// create by zt
// create on 2016-1-17

#import "ButtonListener.h"

//	使用 @rotocol声明，在 .m 文件需要导入协议所在头文件
//	没有导入，则没有方法提示
#import "Button.h"

@implementation ButtonListener

//	按钮点击事件
- (void) onClick: (Button *) button {
	NSLog(@"ButtonListener 已经监听到按钮被点击");
	
//	TODO
}

@end
