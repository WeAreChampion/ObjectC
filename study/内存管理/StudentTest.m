// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Student.h"

//	内存泄露有没有泄露，看引用值
//	alloc, new, copy ： 引用计数值 + 1
//	retain : 引用计数值 + 1
//	release ：	引用计数值 - 1
//	autorelease : 系统自动释放
//	引用计数值为 0，系统自动回收

//	内存管理法则
//	谁创建，谁释放
//	谁 retain，谁 release
int main(int argc, const char *argv[]) {

    @autoreleasepool {

//		引用计数值为 1		
		Student *stu = [[Student alloc] init];
		
//		引用计数值 - 1， 即为 0，内存回收	
		[stu release];
//		多次调用会发送野指针错误
//		即访问看不属于你的内存
//		[stu release];
		
		Student *stu2 = [[Student alloc] init];
		
//		z 代表无符号
//		retainCount 返回无符号整数
		NSLog(@"引用计数值为%zi", [stu2 retainCount]);
		
//		调用 retain 方法 引用计数值 + 1，即为 2
		stu2 = [stu2 retain];
		
//		引用计数值为 - 1，即为 1		
		[stu2 release];
		
//		引用计数值 - 1， 即为 0，内存回收	
		[stu2 release];

//		此处不能打印，因为内存 stu2 已经回收		
//		NSLog(@"引用计数值为%zi", [stu2 retainCount]);

//		对象会在合适的时间释放
		Student *stu3 = [[[Student alloc] init] autorelease]
    }
    return 0;
}