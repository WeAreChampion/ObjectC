// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@interface Student : NSObject {
	int _age;
	int _no;
	float _height;
}

// property 只用在 .h 文件
//	编译器遇到 property 会自动展开 getter 和 setter 的声明
//	如生成 -(void) setAge: (int) age
@property int age;

@property int no;

//	生成 -(void) set_no: (int) age
//	@property int _no;

@property float height;

@end
