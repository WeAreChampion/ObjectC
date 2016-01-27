// create by zt
// create on 2016-1-16

#import "Student.h"

@implementation Student

//	@synthesize 只用在 .m 文件
//	@synthesize 自动生成 getter 和 setter 实现
//	使用 @synthesize 关键字
//	用法 @synthesize property(属性名称)

//	可以连续写
//	@synthesize age, height, no;
//	@synthesize 默认会去访问跟与 property 相同的变量 age
//	如果找不到同名的变量，会自动生成同名的变量 age
//	不存在，生成的变量会在 .m 文件中，即为私有
//	使用了 @synthesize 关键字，则可以去掉属性的声明
//	@synthesize age;

//	代表 getter 和 setter 方法会去访问 _age 这个成员变量
@synthesize age = _age;

@synthesize height = _height;

@synthesize no = _no;

@end