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

- (void) dealloc {
	[super dealloc];
}

- (void) test {
	// TODO
)
@end

@implementation Student (Addition)

- (void) test3 {
	// TODO
}

@end
