// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

// 使用 import 引入类的声明
#import "Student.h"

//	该方法是 C 语言中的方法
//	OC 中的方法 必须包含 - 或 +
//	且返回值使用括号()
int main(int argc, const char *argv[]) {

    @autoreleasepool {

        // insert code here...
		
		// 创建一个 Student 对象
		
		// 1. 调用一个静态方法 alloc 来分配内存;
		// 该方法返回 id 类型， 暂时把其当做泛型
		// 方法的调用使用[对象/类名 方法名称]
		// 返回 分配的内存空间，并使用对象指针指向该地址
		// Student *stu = [Student alloc];
		
		// 2.调用动态 init 方法，初始化该对象并返回
		// stu = [stu init];
		
		// 以上两步可以一次实现，推荐使用
		Student *stu = [[Student alloc] init];
		
		// 设置值
		[stu setAge:10];
		
		// stu.age 即调用 getAge 方法
		// 或者使用 [stu age] 即调用 动态方法 age
		NSLog(@"age is %i", stu.age);
		
		// 或者使用 . 号，编译器会自动替换为 setXX 方法
		// 调用属性的 set 方法，规范命名为set+属性名首字母大写
		stu.age = 12;
		
		NSLog(@"age is %i", stu.age);
		
		// 释放对象，后面使用 Foundation 框架会自动释放
		// 只能释放一次，不能多次释放
		[stu release];
		
		// 调用构造方法
		Student *stu2 = [[Student alloc] initWithAge: 12 andNo: 10];
		
		NSLog(@"%@", stu2);
		[stu2 release];
		
		// 使用 autorelease 方法自动释放
		Student *stu3 = [[[Student alloc] initWithAge: 13 andNo: 13] autorelease];
		
		NSLog(@"%@", stu3);
		
//		后面才加入的初始方法
//		等价于 Student *stu4 = [[Student alloc] init]
		Student *stu4 = [Student new];	
    }
    return 0;
}