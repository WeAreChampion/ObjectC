// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@interface Button : NSObject
//	typedef 返回值 (^Block名称) (参数列表)

@class Button;

typedef void (^ButtonBlock) (Button *b);

//	block 不能用 *
//	暂时使用 assign，一般不用
@property (nonatomic, assign) ButtonBlock block;

- (void) click;

@end

