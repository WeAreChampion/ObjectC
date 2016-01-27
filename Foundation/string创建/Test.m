// the struct demo
// create by zt
// create on 2016-1-23

#import<Foundation/Foundation.h>

void testCreatString() {
//	�Ƽ�ʹ��
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
	
//	ʹ�þ�̬���������� autorelease
//	with C String
	NSString *str5 = [NSString stringWithUTF8String:cString];
	
	NSString *str6 = [NSString stringWithFormat: @"My age is %i and height is %.2f", 18, 1.65f];
	
	NSString *str7 = [NSString stringWithCString:cString encoding: NSUTF8StringEncoding];

//	��ȡ�ļ�����
//	���������Ϣ
	NSError *error;
	NSString *path = @"D:test.txt";
	
//	�洢������Ϣ�� NSError ָ���У�Ӧ��ʹ�����ַ
//	encoding ���ַ����ı��룬��ö�ٳ���
//	�������ָ�� NSError ��ָ�룬���ڽ�����Ϣ
	NSString *str8 = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: &error];
//	��ȡ�� error != nil
	if(error) {
	
//		ʹ�� localizedDescription ��ȡ��Ҫ������Ϣ
		NSLog(@"��ȡ����ʧ��: %@", [error localizedDescription]);
		NSLog(@"��ȡ����ʧ��: %@", error);
	} else {
		NSLog(@"��ȡ���ݳɹ�: %@", str8);
	}
	
//	URL : scheme:// + path
//	file:// ��ͷ�������ļ�·�����˴�ʹ�õ�˵������desktop
	path = @"file:///Users/apple/Desktop/abc.txt";
	NSURL *url = [NSURL URLWithString:path];
	
//	����url���أ��˴�˵����url	
	NSString *str10 = [NSURL stringWithConentsOfURL:url encoding: NSUTF8StringEncoding error: nil];
	
	url = [NSURL URLWithString: @"http://www.baidu.com"];
	NSString *str11 = [NSURL stringWithConentsOfURL:url encoding: NSUTF8StringEncoding error: nil];
	
}

//	ʹ�� OC ��ע��
#pragma mark �ַ����Ĵ�Сд
void testLowerAndUpperCaseString() {
//	תΪ��д	
	NSLog(@"%@", [@"abc" uppercaseString]);
	
//	תΪСд	
	NSLog(@"%@",[@"Abc" lowercaseString]);
	
//	����ĸ��д	
	NSLog(@"%@",[@"abc" capitalizedString]);
}

void testStringExport() {
//	���ַ�������д���ļ�
//	����ļ������ڣ��Զ�����
//	�ļ��в����ڣ�ֱ�ӱ���
//	�ļ�����ָ������Ҳ�ᱨ��
	NSString *str9 = "A String into File";

//	atomically : BOOL ֵ(YES(1), NO(0))
//	�Ƿ���ԭ�����ͣ�����ʹ���м��ļ�����д���м��ļ�
	[str9 writeToFile: path atomically: YES encoding: NSUTF8StringEncoding error: nil];

}

void testCompare() {
//	����ַ����������Ƿ���ͬ
//	BOOL result = [@"abc" isEqualToString: @"abs"];

	NSComparisonResult result2 = [@"abc" compare: @"Abc"];
	
//	��� = �ұ�
	if(result2 == NSOrderedSame) {
		NSLog(@"��� = �ұ�");
	} else if(result2 == NSOrderedAscending) {
//		���  < �ұߣ� �� ASC(����)
		NSLog(@"��� < �ұ�");
	} else if(result2 == NSOrderedDescending) {
//		��� > �ұߣ� �� DESC(����)
		NSLog(@"��� > �ұ�");
	}
}

#pragma mark �ַ�����ȡ
void testSubString() {
	NSString *str1 = @"123456";

//	��ȡ�ַ���[index, end]���˴���[3, end]
	NSLog(@"%@", [str1 substringFromIndex: 3]);
	
//	��ȡ�ַ���[0, index)�������� index,�˴���[0, 3)
	NSLog(@"%@", [str1 substringToIndex: 3]);
	
//	location = 2, length = 3;	
	NSRange range = NSMakeRange(2, 3);
	NSLog(@"%@", [str1 substringWithRange: range]);
	
//	�ַ����ָ�	
	NSString *str2 = @"a,2,3,4";
	NSArray *array = [str2 componentsSeperatedByString:@","];
	NSLog(@"%@", array);
}

#pragma mark ��·�����
void pathTest() {
//	���ٴ���һ���Զ��ͷŵ�����
	NSMutableArray *components = [NSMutableArray array];
	
	[components addObject: @"Users"];
	[components addObject: @"MJ"];
	[components addObject: @"Desktop"];
	
//	�������е������ַ���ƴ�ӳ�һ��·��
	NSString *path = [NSString pathWithComponents: components];
	
//	��·���ֽ��һ������
	NSArray *cmps = [path pathComponents];
	
	path = @"/users/mj/test";
	
//	�ж��Ƿ�Ϊ����·���������Ƿ��� / ��ͷ	
	BOOL isAbsolute = [path isAbsolutePath];
	
//	Ŀ¼���Ƽ����һ��Ŀ¼	
	NSString *dirName = [path lastPathComponent];
	
//	ɾ�����һ��Ŀ¼
	NSString *newPath = [path stringByDeletingLastPathComponent];
	
//	�������ƴ��һ��Ŀ¼	
	newPath = [path stringByDeletingLastPathComponent];
	
}

#pragma mark ��չ������
void testExtension() {
	NSString *str = @"/users/mj/test.txt";
	
//	��չ��	
	NSString *res = [str pathExtension];
	
//	ɾ����չ��
	res = [str stringByDeletingPathExtension];
	
//	�����չ��	
	[str stringByAppendingPathExtension: @"mp3"];
}

#pragma mark �����÷�
void other() {
	NSString *str = @"12";
	
//	תΪ���������ƵĻ��� longValue, doubleValue..	
	int a = [str intValue];
	
//	�������������Ǽ����ַ���	
	[@"����AAA" length];

// ȡ����Ӧ���ַ�	
	unichar c = [@"abc" characterAtIndex: 0];

//	���� C �����е��ַ���	
	const char *s = [@"abc" UTF8String];
	
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
	
	}
	
	return 0;	
}