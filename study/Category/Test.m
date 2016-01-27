// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Student.h"

#import "Student+Test.h"

int main(int argc, const char *argv[]) {

    @autoreleasepool {
		Student *stu = [[[Student alloc] init] autorelease];
		
		[stu test];

//		要使用拓展的方法，需要引入拓展类		
		[stu test2];
    }
    return 0;
}