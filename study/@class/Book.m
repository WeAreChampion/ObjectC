// create by zt
// create on 2016-1-17

#import "Book.h"

@implementation Book

//	在xcode 4.5 环境下getter/setter可以省略
//	注释的写法
//	方法分组，使用 - 分组名称
#pragma	mark - 生命周期方法
#pragma	mark 构造方法
- (id) initWithPrice: (float) price {
	if(self = [super init]) {
		_price = price;
	}
}

#pragma	mark 回收对象
- (void) dealloc {
	NSLog(@"book: %f被销毁了", _price);

	[super dealloc];
}

#pragma	mark - 私有方法
#pragma	mark 私有方法1
- (void) test1 {
	
}

#pragma	mark 私有方法2
- (void) test2 {
	
}

@end