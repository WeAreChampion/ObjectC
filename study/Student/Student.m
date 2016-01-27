// create by zt
// create on 2016-1-16
// Student.h 即 *.h 定义成员变量与方法声明

// 使用 import 引入类的声明部分
#import "Student.h"

// 使用 @implementation ClassName 的方式
@implementation Student

// insert the implementation code

// 实现构造方法
- (id) initWithAge: (int) age andNo: (int) no {
//	初始化父对象
//	self = [super init]
//	可能存在开辟内存失败，则返回 nil
//	OC 中使用 nil 表示空，即java中的 null
//	self 即java中的 this 对象
//	if(self != nil) // 或者是 if(self)
//	{
//		_age = age;
//		_no = no;
//	}
	
//	推荐使用以下方式
	if(self = [super init]) {
		_age = age;
		_no = no;
		
//		这里可以使用 self. 调用 getXXX or setXXX
//		self.age = age;
//		self.no = no;
	}
	
//	返回当前对象
	return self;
}

// 实现 age 的 get 方法
- (int) age {
//	return self.age 即调用当前对象的 age 方法
//	只是读 则为 getXXX，上面的写法会出现死循环 
	return _age;
}

- (int) no {
	return no;
}


- (void) setAge: (int) age {
//	 _age = self.age 即调用当前对象的 setAge 方法
//	写 则为 setXXX，上面的写法会出现死循环
	_age = age;
}

- (void) setNo: (int) no {
	_no = no;
}

//	重写父类 的 description 方法
//	该方法使用 %@ 打印一个对象时，会调用这个方法
- (NSString *) description() {
//	1. @param NSString
//	2. @param params
	
//	系统自带的静态方法，内部都是自动释放
	return [NSString stringWithFormat:@"age is %i and no is %i", _age, _no];
}

//	谁调用方法，self 指向谁
//	动态方法中可以使用 self，代表是当前对象
- (void) test() {
	int age = self.age;
}

// 如果直接把方法写在 .m 文件中，没有在 .h 文件中没有，则为私有方法；因为引入的是 .h(声明文件)，未引入 .m

//	静态方法中使用 self 代表是类
+ (void) test2() {
	int age = self.age;
	
//	以下方法说等价的
	[Student alloc];
//	[self alloc];
}

// @end 代表类实现结束
@end