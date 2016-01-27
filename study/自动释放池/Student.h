// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@interface Student : NSObject

@property int age;

@property int no;

//	快速创建对象的方法，且为自动释放
+ (id) student;

+ (id) studentWithAge: (int) age;
@end
