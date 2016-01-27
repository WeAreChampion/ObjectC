// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

@protocol ButtonDelegate;

//	监听按钮，需要实现 ButtonDelegate 协议
//	MyListener 实现 ButtonDelegate 协议
@interface MyListener : NSObject <ButtonDelegate>


@end

