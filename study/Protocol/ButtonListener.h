// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

//	引入协议 ButtonDelegate
//	#import "Button.h"

// 	使用 @protocol 声明协议，跟 @class 用途一致
//	不使用 #import，因为 @protocol 效率更高
//	使用 @protocol，在实现层应该导入该协议所在文件
@protocol ButtonDelegate;

//	ButtonListener 实现 ButtonDelegate 协议
@interface ButtonListener : NSObject <ButtonDelegate>


@end

