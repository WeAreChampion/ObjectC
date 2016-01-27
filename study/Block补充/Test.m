// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>
/*
 * C, C++ 中的函数
 */
int sum(int a, int b) {
	return a + b;
}

void test() {
//	定义了 Sum 这个Block 类型
	typedef int (^Sum) (int, int);
	
//	定义了 sump 这种指针类型，这种指针说指向函数的	
	typedef int (*Sump) (int, int);
	
//	使用Block类型定义了一个 Block 变量 sum2
	Sum sum2 = ^(int a, int b) {
		return a + b;
	};
	
	NSLog(@"10 + 5 = ", sum2(10, 5));

//	指针变量指向函数，地址为函数名称	
	Sump p = sum;

//	*p 取出指针指向的内容
	NSLog(@"10 + 5 = ", (*p)(9, 8));
	
//	获取直接使用指针调用 p(9, 8);
	NSLog(@"10 + 5 = ", p(9, 8));

}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
//		Block Sum		
		int (^Sum) (int, int) = (int a, int b) {
			return a + b;
		}
//		Block 调用
		NSLog(@"10 + 5 = ", Sum(10, 5));
		
//		函数调用		
		NSLog(@"10 + 5 = ", sum(10, 5));

//		函数指针，指向 sum 函数
//		使用 * 来取内容
		int (*sump) (int, int) = sum;
		NSLog(@"10 + 5 = ", (*sump) (10, 5));
    }
    return 0;
}