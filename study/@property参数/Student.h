// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@class Book;
@class Card;

@interface Student : NSObject

@property int age;

@property int no;

//	(retain) : release 旧值， retain 新值
//	加 (retain) 会自动生成释放的setter 方法
//	可以混合使用
@property (nonatomic, retain) Book *book;

@property (retain) Card *card;

//	id 是 OC 中的关键字
//	默认是 (assign)
//	意思是 setter 直接赋值
@property (assign) int ID;

//	(readonly) 代表属性只读，只生成 get 方法
//	默认是 readWrite， 同时生成 getter/setter
@property (readonly) int remark;

//	默认是 (atomic);即给方法加锁，是线程安全的
//	此关键字要加锁，则会耗性能
@property (atomic) int autoCount;

//	iPhone 开发大多数情况下使用 nonatomic
//	(nonatomic) 代表方法不需要考虑线程安全问题
@property (nonatomic) int count;

@property (nonatomic, assign) int count2;

//	BOOL 是 bool 类型，即 YES / NO
//	getter 指定 get 方法名称
//	setter 指定 set 方法名称
@property (nonatomic, getter=isRich, setter=setRich) BOOL rich;

@end
