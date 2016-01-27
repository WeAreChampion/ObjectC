// the struct demo
// create by zt
// create on 2016-1-23

#import<Foundation/Foundation.h>

void testCreatString() {
//	推荐使用
	NSString *str1 = @"A String";
	
	NSString *str2 = [[NSString alloc] init];
	str2 = @"A String";
	[str2 release];
	
	NSString *st3 = [[NSString alloc] initWithString:@"A String"];
	[str3 release];
	
//	C String
	char *cString = "A String";
	
	NSString *st4 = [[NSString alloc] initWithCString: cString encoding: NSUTF8StringEncoding];
	[str4 release];
	
//	使用静态方法创建， autorelease
//	with C String
	NSString *str5 = [NSString stringWithUTF8String:cString];
	
	NSString *str6 = [NSString stringWithFormat: @"My age is %i and height is %.2f", 18, 1.65f];
	
	NSString *str7 = [NSString stringWithCString:cString encoding: NSUTF8StringEncoding];

//	读取文件内容
//	保存错误信息
	NSError *error;
	NSString *path = @"D:test.txt";
	
//	存储错误信息到 NSError 指针中，应该使用其地址
//	encoding 即字符串的编码，是枚举常量
//	传入的是指向 NSError 的指针，用于接收信息
	NSString *str8 = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: &error];
//	获取是 error != nil
	if(error) {
	
//		使用 localizedDescription 获取主要错误信息
		NSLog(@"读取内容失败: %@", [error localizedDescription]);
		NSLog(@"读取内容失败: %@", error);
	} else {
		NSLog(@"读取内容成功: %@", str8);
	}
	
//	URL : scheme:// + path
//	file:// 开头代表是文件路径，此处使用的说本机的desktop
	path = @"file:///Users/apple/Desktop/abc.txt";
	NSURL *url = [NSURL URLWithString:path];
	
//	根据url下载，此处说本地url	
	NSString *str10 = [NSURL stringWithConentsOfURL:url encoding: NSUTF8StringEncoding error: nil];
	
	url = [NSURL URLWithString: @"http://www.baidu.com"];
	NSString *str11 = [NSURL stringWithConentsOfURL:url encoding: NSUTF8StringEncoding error: nil];
	
}

//	使用 OC 的注释
#pragma mark 字符串的大小写
void testLowerAndUpperCaseString() {
//	转为大写	
	NSLog(@"%@", [@"abc" uppercaseString]);
	
//	转为小写	
	NSLog(@"%@",[@"Abc" lowercaseString]);
	
//	首字母大写	
	NSLog(@"%@",[@"abc" capitalizedString]);
}

void testStringExport() {
//	将字符串内容写入文件
//	如果文件不存在，自动创建
//	文件夹不存在，直接保存
//	文件编码指定错误，也会报错
	NSString *str9 = "A String into File";

//	atomically : BOOL 值(YES(1), NO(0))
//	是否是原子类型，表明使用中间文件，先写入中间文件
	[str9 writeToFile: path atomically: YES encoding: NSUTF8StringEncoding error: nil];

}

void testCompare() {
//	检测字符串的内容是否相同
//	BOOL result = [@"abc" isEqualToString: @"abs"];

	NSComparisonResult result2 = [@"abc" compare: @"Abc"];
	
//	左边 = 右边
	if(result2 == NSOrderedSame) {
		NSLog(@"左边 = 右边");
	} else if(result2 == NSOrderedAscending) {
//		左边  < 右边， 即 ASC(升序)
		NSLog(@"左边 < 右边");
	} else if(result2 == NSOrderedDescending) {
//		左边 > 右边， 即 DESC(降序)
		NSLog(@"左边 > 右边");
	}
}

#pragma mark 字符串截取
void testSubString() {
	NSString *str1 = @"123456";

//	截取字符串[index, end]，此处是[3, end]
	NSLog(@"%@", [str1 substringFromIndex: 3]);
	
//	截取字符串[0, index)，不包括 index,此处是[0, 3)
	NSLog(@"%@", [str1 substringToIndex: 3]);
	
//	location = 2, length = 3;	
	NSRange range = NSMakeRange(2, 3);
	NSLog(@"%@", [str1 substringWithRange: range]);
	
//	字符串分割	
	NSString *str2 = @"a,2,3,4";
	NSArray *array = [str2 componentsSeperatedByString:@","];
	NSLog(@"%@", array);
}

#pragma mark 与路径相关
void pathTest() {
//	快速创建一个自动释放的数组
	NSMutableArray *components = [NSMutableArray array];
	
	[components addObject: @"Users"];
	[components addObject: @"MJ"];
	[components addObject: @"Desktop"];
	
//	将数组中的所有字符串拼接成一个路径
	NSString *path = [NSString pathWithComponents: components];
	
//	将路径分解成一个数组
	NSArray *cmps = [path pathComponents];
	
	path = @"/users/mj/test";
	
//	判断是否为绝对路径，依据是否以 / 开头	
	BOOL isAbsolute = [path isAbsolutePath];
	
//	目录名称即最后一个目录	
	NSString *dirName = [path lastPathComponent];
	
//	删除最后一个目录
	NSString *newPath = [path stringByDeletingLastPathComponent];
	
//	在最后面拼接一个目录	
	newPath = [path stringByDeletingLastPathComponent];
	
}

#pragma mark 扩展名处理
void testExtension() {
	NSString *str = @"/users/mj/test.txt";
	
//	拓展名	
	NSString *res = [str pathExtension];
	
//	删除拓展名
	res = [str stringByDeletingPathExtension];
	
//	添加拓展名	
	[str stringByAppendingPathExtension: @"mp3"];
}

#pragma mark 其他用法
void other() {
	NSString *str = @"12";
	
//	转为整数，类似的还有 longValue, doubleValue..	
	int a = [str intValue];
	
//	计算字数，不是计算字符数	
	[@"我是AAA" length];

// 取出对应的字符	
	unichar c = [@"abc" characterAtIndex: 0];

//	返回 C 语言中的字符串	
	const char *s = [@"abc" UTF8String];
	
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
	
	}
	
	return 0;	
}