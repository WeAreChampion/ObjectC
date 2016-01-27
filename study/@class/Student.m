// create by zt
// create on 2016-1-17

#import "Student.h"

//	因为要使用 Book 的方法，所以需要引入 Book.h
#import "Book.h"

@implementation Student

//	在xcode 4.5 环境下setter/getter可以省略

-(id) initWithAge: (int) age {
	if(self = [super init]) {
		_age = age;
	}
	return self;
}

- (void) setBook: (Book * book) {
	if(book != _book) {
		[_book release];
		_book = [book retain];
	
//		以下代码等价于 	_book = [book retain]; 
//		book 引用计数 + 1
//		[book retain];
//		_book = book;
	}
}

- (void) dealloc {
//	以下代码等价于 [_book release];
//	self.book = nil;
//	[self setBook: nil];
	
	[_book release];
	[super dealloc];
}

@end