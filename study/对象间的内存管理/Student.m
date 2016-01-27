// create by zt
// create on 2016-1-17

#import "Student.h"

@implementation Student

//	在xcode 4.5 环境下setter/getter可以省略

-(id) initWithAge: (int) age {
	if(self = [super init]) {
		_age = age;
	}
	return self;
}

//	因为要设置 book ，使用 retain 是 book 引用 + 1
- (void) setBook: (Book * book) {
//	先释放旧的成员变量，再 retain 新的对象，引用加 1
//	不需要判断为 nil，OC 不会处理
//	解决对相同的对象进行二次赋值
	if(book != _book) {
		[_book release];
		_book = [book retain];
	}
}

- (void) dealloc {
	NSLog(@"student: %i被销毁了", _age);

//	由 Student 释放 Book 对象
//	[self.book release];
	[_book release];
	
	[super dealloc];
}

@end