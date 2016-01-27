// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char *argv[]) {
//	@autoreleasepool 代表创建一个自动释放池
//	自动释放池销毁了，代表池中所有的对象对象引用值 - 1
//	即只是调用对象的 release 方法
    @autoreleasepool {
//		Student *stu = [[Student alloc] init];
//		stu 放入 自动释放池中		
//		[stu autorelease];

//		推荐写法
		Student *stu = [[[Student alloc] init] autorelease];
    }
	
//	创建另外一个池子	
//	@autoreleasepool {
//		Student *stu2 = [[Student alloc] init];
//		stu2 放入 自动释放池中	
//		[stu2 autorelease];
//    }
    return 0;
}