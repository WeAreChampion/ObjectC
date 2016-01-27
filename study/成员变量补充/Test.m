// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char *argv[]) {

    @autoreleasepool {
		Student *stu = [[[Student alloc] init] autorelease];
		
//		直接访问 public 变量，使用 '->'
		stu->height = 10;

//		%f 输出 float	
//		%.0f 代表没有小数	
		NSLog(@"Student 's hegith : %.0f", stu->height);
    }
    return 0;
}