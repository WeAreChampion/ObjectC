// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Button.h"

//	使用 typedef 关键字将 Block 定义为一种类型
typedef int (^MySum) (int, int);

// Block 实现
void test() {
//	A Block code
//	第一个 int 代表是返回值
//	(^) 代表是一个 Block
//	Sum 是 Block 名称
//	(int, int) 是Block 的接收参数
//	= ^ 是实现 Block，其中参数说 a 和 b
	int (^Sum) (int, int) = ^(int a, int b) {
		return a + b;
	}
	
//	调用 Block，类似调用函数
	int a = Sum(10, 11);
	NSLog(@"%i", a);
}

void test2() {
	int c = 15;
//	__block 有两个下划线
	__block int d = 10;
	
//	声明一个 Block 变量
//	Block 变量没有 *
	MySum sum = ^(int a, int b) {
//		Block 可以访问外面定义的变量	
//		但是不能进行修改，未被 __block
		NSLog(@"c=%i", c);
		
//		__block 修饰的变量，在 Block 内可以修改		
		d = 22;
		NSLog(@"c=%i", d);
		
		return a + b;
	}

//	先写好函数，而后执行，将返回值传回	
	NSLog(@"%i", sum(10, 10));
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
		test();
		
		test2();
		
		Button *btn = [[[Button alloc] init] autorelease];

//		该方式叫回调
//		Block 调用时，回调
		btn.block = ^(Button *b) {
			NSLog(@"按钮-%@被点击了", b);
		};

//		模拟按钮点击		
		[btn click];
    }
    return 0;
}