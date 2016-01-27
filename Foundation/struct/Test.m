// the struct demo
// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

//	To define struct Date
//	has three number year, month, day
typedef struct Date {
	int year;
	int month;
	int day;
}MyDate;

//	test struct Date
void testDate() {
	MyDate date = {2013, 4, 5};
	
	date.day = 6;
	
}

void testNSRange() {
// 方式 1
	NSRange r1;
	r1.location = 8;
	r1.length = 3;

//	方式 2
	NSRange r2 = {8, 3};
//	或者是 
//	NSRange r2 = {.location = 7, .length = 3};	

//	方式 3，推荐使用
//	使用 NSMakeRange 方法创建 NSRange
	NSRange range = NSMakeRange(8, 10);
	
//	%zi 打印 无符号整数	
	NSLog(@"location:%zi", range.location);
	NSLog(@"length:%zi", range.length);
	
//	打印结构体对象，需要使用 NSSringFromRange方法 转换为 NSString 对象
	NSSring *str = NSSringFromRange(range);
//	%@ 代表OC对象，结构体不是，所以不能直接打印
	NSLog(@"%@", str);
}

//	即 Point，二维平面
void testNSPoint() {
//	CGPoint p;	
	NSPoint p;
	p.x = 1;
	p.y = 11;

//	方式 2
	NSPoint p2 = NSMakePoint(10, 9);
	
//	CoreGraphics， 绘图类，即 CG,以CG开头的框架
//	方式 3，常见
	p2 = CGPointMake(8, 9);
	
	NSSring *str = NSSringFromPoint(p);
	NSLog(@"%@", str);
}

void testNSSize() {
//	CGSize = NSSize
	NSSize size;
	size.width = 90;
	size.height = 100;

//	width = 80, height = 100;
	size = NSMakeSize(80, 100);

//	width = 90, height = 90;
	size = CGSizeMake(90, 90);
	
	NSSring *str = NSSringFromSize(size);
	NSLog(@"%@", str);
}

void testNSRect {
//	NSRect = CGRect	
	NSRect r;
	
	r.orign.x = 10;
	r.orign.y = 11;

//	不支持
//	r.orign = {10, 11};
	
	r.size.width = 100;
	r.size.height = 90;

	
	r = NSMakeRect(10,10,100,100);
	
	r = CGRectMake(10,10,100,100);
	
	NSSring *str = NSSringFromRect(r);
	NSLog(@"%@", str);
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
	
	}
	
	return 0;	
}