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
// ��ʽ 1
	NSRange r1;
	r1.location = 8;
	r1.length = 3;

//	��ʽ 2
	NSRange r2 = {8, 3};
//	������ 
//	NSRange r2 = {.location = 7, .length = 3};	

//	��ʽ 3���Ƽ�ʹ��
//	ʹ�� NSMakeRange �������� NSRange
	NSRange range = NSMakeRange(8, 10);
	
//	%zi ��ӡ �޷�������	
	NSLog(@"location:%zi", range.location);
	NSLog(@"length:%zi", range.length);
	
//	��ӡ�ṹ�������Ҫʹ�� NSSringFromRange���� ת��Ϊ NSString ����
	NSSring *str = NSSringFromRange(range);
//	%@ ����OC���󣬽ṹ�岻�ǣ����Բ���ֱ�Ӵ�ӡ
	NSLog(@"%@", str);
}

//	�� Point����άƽ��
void testNSPoint() {
//	CGPoint p;	
	NSPoint p;
	p.x = 1;
	p.y = 11;

//	��ʽ 2
	NSPoint p2 = NSMakePoint(10, 9);
	
//	CoreGraphics�� ��ͼ�࣬�� CG,��CG��ͷ�Ŀ��
//	��ʽ 3������
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

//	��֧��
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