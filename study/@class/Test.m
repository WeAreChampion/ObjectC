// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Student.h"

void test() {
//	引用计数器 stu: 1
	Student *stu = [[Student alloc] initWithAge: 19];
	
//	引用计数器 book: 1	
	Book *book = [[Book alloc] initWithPrice: 3.0];

//	引用计数器 book: 1
	stu.book = book;
	
	[book release];
	[stu release];
}

//	释放对象需要遵循相应的原则
void test1(Student *stu) {
//	book: 1
	Book *book = [[Book alloc] initWithPrice: 3.4];

//	需要在 setter 里面 使用 retain 方法
//	book: 2	
	stu.book = book;

//	创建了就需要 release
//	book: 1	
	[book release];
}

void test1(Student *stu) {
//	book: 1
	Book *book = [[Book alloc] initWithPrice: 3.4];

//	需要在 setter 里面 使用 retain 方法
//	book: 2	
	stu.book = book;

//	创建了就需要 release
//	book: 1	
	[book release];
}

void test2(Student *stu) {
//	stu 内部使用 Book 对象
	[stu readBook];
}

void test3(Student *stu) {
//	book: 1
	Book *book = [[Book alloc] initWithPrice: 3.4];

//	需要在 setter 里面 使用 retain 方法
//	book: 2	
	stu.book = book;

//	创建了就需要 release
//	book: 1	
	[book release];
	
//	重复赋值，需在 setter 里面进行判断，避免以前的对象已经释放
	stu.book = book;
	
//	book2: 1
	Book *book2 = [[Book alloc] initWithPrice: 3.4];	
	
//	book2: 2
	stu.book = book2;

//	book2: 1
	[book2 release];
	
//	但是 book 的引用值为 1，内存泄露，需要释放
//	应该在 setter 里面释放	
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
//		stu: 1	
		Student *stu = [[Student alloc] initWithAge: 19];

//		stu: 1, book: 1
		test1(stu);
		
//		stu: 1, book: 1		
		test2(stu);
		
//		stu: 0, book: 0
		[stu release];
	
//		野指针,会报错，stu 仍然指向原来的空间，但该空间的数据不是
//		只要指针还有值，即还指向原来的地址
//		stu 是野指针，即指向不应该访问的内存
//		[stu release];
//		为了不让其指向原来的空间，可以执行 stu = nil;

//		空指针，不会报错
//		相当于给空指针发送 release 消息
//		[nil release];	
    }
    return 0;
}