// create by zt
// create on 2016-1-16

// 使用import 关键字会解决代码的重复导入

// 如果是使用include，C或C++应该包含以下代码片段
// #ifndef ___OC___Header_h
// #define ___OC___Header_h
// //	here is the code...
// #endif

#import<Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
	
	// 与内存管理相关，代码应写到其内部
	// 使用该关键字以后可以可以自动生成内存代码
	@autoreleasepool {
	
		// insert code here...
		
		// 使用NSLog 打印日志，自动换行且加日期
		// OC 字符串需要使用 @ 开头，以区别C,C++ 的字符串
		// %i  打印整数
		// %@  打印对象
		
		NSLog(@"Hello World!");
		NSLog(@"Hello World!");
		
		NSLog(@"Hello World!, 整数 = %i", 5);
	}
	return 0;
}