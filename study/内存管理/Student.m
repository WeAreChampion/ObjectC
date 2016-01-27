// create by zt
// create on 2016-1-17

#import "Student.h"

@implementation Student

//	在xcode 4.5 环境下可以省略
@synthesize age = _age;

@synthesize height = _height;

@synthesize no = _no;

//	系统自动调用
//	重写对象销毁前调用的方法
- (void) dealoc {
	NSLog(@"%@被销毁了", self);

//	一定要调用 super 的 dealoc 方法，且最好放在最后面调用	
//	调用父类对象的 dealoc 方法
	[super dealoc];
}

@end