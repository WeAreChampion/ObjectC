// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char *argv[]) {

    @autoreleasepool {
//		初始化按钮
		Student *stu = [[[Student alloc] init] autorelease];

//		confromToProtocol : 判断是否遵守了某个协议		
		if([stu confromToProtocol: @protocol(Study]) {
			NSLog(@"Student 遵守了Study 协议");
		}

//		respondsToSelector : 判断是否实现了某个方法
		if([stu respondsToSelector]: @selector(test) {
			NSLog(@"Student 没有实现 test 方法");
		}		
    }
    return 0;
}