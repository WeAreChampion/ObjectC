// create by zt
// create on 2016-1-21

#import<Foundation/Foundation.h>

@class Classes;

@interface Student : NSObject

- (id) initWithNo: (int) no AndName: (char*) name;

@property (nonatomic) int no;
@property (nonatomic) char* name;
@property (nonatomic) int age;
@property (nonatomic, retain) Classes *classes;
@property (nonatomic) char* remark;

@end
