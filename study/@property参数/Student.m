// create by zt
// create on 2016-1-17

#import "Student.h"

#import "Book.h"

#import "Card.h"

@implementation Student

//	在xcode 4.5 环境下setter/getter可以省略

-(id) initWithAge: (int) age {
	if(self = [super init]) {
		_age = age;
	}
	return self;
}

//	使用 retain 省去 setter 方法

- (void) dealloc {
//	以下代码等价于 [_book release];
	self.book = nil;
	
	self.card = nil;
	
	[super dealloc];
}

@end