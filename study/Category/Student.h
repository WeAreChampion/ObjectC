// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic) int age;

@property (nonatomic) int no;

- (void) test;
@end

//	声明分类 Addition
//	可以写在同一个文件里
@interface Student (Addition)

- (void) test3;

@end