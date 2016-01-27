// create by zt
// create on 2016-1-16

//	导入父类的头文件使用 import，不能使用 @class
//	因为需要知道父类有哪些方法，可以给子类继承
#import<Foundation/Foundation.h>

//	不能引入 "Book.h"，其相当于把 Book.h 文件内容copy 到此
//	为此会降低编译器性能
//	使用此 import 可能存在循环引入的问题
//	class A 中引用 class B
//	class B 中也引用 class A
//	#import "Book.h"

//	此处只需要声明 Book 是一个类
//	使用 @class 关键字，只是为了声明
//	如果说继承某个类，就要导入类的头文件
//	如果只是定义成员变量、属性，用 @class
@class Book;

@interface Student : NSObject

@property int age;

@property int no;

//	对象引用，即指针
@property Book *book;

@end
