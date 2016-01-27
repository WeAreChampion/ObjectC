// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#import "Button.h"
#import "ButtonListener.h"
#import "MyListener.h"

int main(int argc, const char *argv[]) {

    @autoreleasepool {
//		初始化按钮	
		Button *button = [[[Button alloc] init] autorelease];

//		使用 ButtonListener 监听按钮
//		初始化按钮监听器
		ButtonListener *listener = [[[ButtonListener alloc] init] autorelease];
		
//		设置监听器给 Button
		button.delegate = listener;
		
		[button click];
		
//		使用 MyListener 监听按钮
		MyListener *myListener = [[[MyListener alloc] init] autorelease];
		
		button.delegate = myListener;
		
		[button click];
    }
    return 0;
}