// create by zt
// create on 2016-1-16
// Student.h 即 *.h 定义成员变量与方法声明

#import<Foundation/Foundation.h>

// 使用 @interface 代表声明一个类
// : 代表继承，类似 C++
// 不支持默认机制，必须声明要继承的类
// NSObject 是 OC 中的基类，类似 java 中的 Object
// 成员变量写在大括号内
@interface Student : NSObject {
//	成员变量推荐使用 _ 开头
//	变量默认是 @protected
//	作用域使用 @private,@public,@protected 关键字
//	定义格式为:
//	@public
//	int _age;
//	int _no;
//	@private
//	float _height;

	int _age;
	int _no;
}

// here insert public method...

// 构造方法
// 推荐使用 init 单词开头，类似NSObject 中的 init 方法
// 返回值 (id) 即 泛型
// 方法名称 initWithAge:andNo:
// 方法使用英语中的语法， init with age and no
- (id) initWithAge: (int) age andNo: (int) no;

//	返回值类型可以是本类的指针，或者使用 id 代替
//- (Student *) initWithAge: (int) age

// - 代表的动态方法
// + 代表的是静态方法
// () 括号内位参数类型， 若果为 id 则代表是泛型
// get 方法推荐使用 属性名称，OC 使用 . 会自动调用方法
// 声明方法以 ; 号结束
- (int) age;

- (int) no;

// 返回值是 void
// 一个冒号对于一个参数，且为方法名称的一部分
// 该方法名称是 setAge:
// 参数是 age，且为 int 类型
- (void) setAge: (int) age;

- (void) setNo: (int) no;

// 类声明的结束标志
@end
