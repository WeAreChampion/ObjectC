// create by zt
// create on 2016-1-17

#import "Student.h"

@implementation Student

//	在xcode 4.5 环境下setter/getter可以省略

+ (id) initWithAge: (int) age {
	if(self = [super init]) {
		_age = age;
	}
	return self;
}

+ (id) student {
	return [[[Student alloc] init] autorelease];
}

+ (id) studentWithAge: (int) age {
//	这里的 self 指向类名,self 指向的是调用者
//	Student *stu = [self student];
	Student *stu = [Student student];
	stu.age = age;
	return stu;
}

- (void) dealloc {
	NSLog(@"%@被销毁了", self);
	[super dealloc];
}

@end