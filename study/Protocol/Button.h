// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

// 声明 Button
@class Button;

//	类似 Java 中的接口
//	使用 @protocol 定义协议
//	<> 代表实现某个协议
//	NSObject 是最根本的协议
@protocol ButtonDelegate <NSObject>

//	按钮点击事件
//	传入点击的对象，标明哪个对象被点击了
- (void) onClick: (Button *) button

@end

@interface Button : NSObject

//	delegate 就是按钮的监听器
//	id 代表任意对象
//	<ButtonDelegate> 代表一定要遵守 ButtonDelegate 协议
//	retain 保证 setter 时进行内存释放
@property (nonatomic, retain) id<ButtonDelegate> delegate;


//	按钮的一个方法，模拟按钮被点击，即执行该方法
- (void) click;
@end

