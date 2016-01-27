// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

#pragma mark 可变字符串的创建
void testNSMutableString() {

//	NSMutableString 是 NSString 的子类，拥有其所有的 public 方法

//	预先分配 10 个字数的存储空间
//	大于会自动分配
	NSMutableString *str1 = [[NSMutableString alloc] initWithCapacity:10];
	
//	设置字符串内容	
	[str1 setString:@"123"];
	
//	拼接字符串
	[str1 appendString:@"456"];
	
//	拼接字符串 Format String	
	[str1 appendFormat:@"age is %i and height is %f", 27, 1.55f];
	
//	替换字符串
//	先找出字符串的位置，而后替换为 "no"
//	NSRange range = [str1 rangeOfString: @"age"];
	[str1 repleaseCharacterInRange: range withString:@"no"];	
	
//	插入字符串, 第 index 个字符串后插入
	[str1 insertString:@"abc" atIndex: 2];
	
//	删除字符串，传入 NSRange 对象
	range = [str1 rangeOfString: @"abc"];
	[str1 deleteCharactersInRange: range];

	[str1 release];
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
		
    }
    return 0;
}