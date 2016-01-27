// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@interface Student : NSObject {

//	默认是 @protected	
	int _no;
	
//	成员变量	
	@public
	float _height;
}

@property (nonatomic, assign) int no;

@end
