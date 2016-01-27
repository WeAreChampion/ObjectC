// create by zt
// create on 2016-1-17

#import "Book.h"

@implementation Book

//	在xcode 4.5 环境下getter/setter可以省略

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


@end