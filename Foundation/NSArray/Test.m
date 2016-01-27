// create by zt
// create on 2016-1-24

#import<Foundation/Foundation.h>

#pragma mark NSArray 创建 

void testArrayCreate() {
//	NSArray 只能装OC 对象，且不能装 nil
//	NSArray 内容是不可变的，即只能是创建的时候给予元素
//	创建一个空的数组，但是内部没有数据
	NSArray * array = [NSArray array];
	
//	创建有1个元素的数据	
	array = [NSArray arrayWithObject: @"123"];

//	创建有多个元素的数组
//	以下方法只有 3个元素， nil 代表是 NSArray 的结束标志	
	array = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];
	
//	数组元素个数，返回无符号整数
	unsigned int count = [array count];
}

#pragma mark 数组的简单使用
void arrayUse() {
	NSArray *array = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];
	
// 	是否包含了某元素
	if([array containsObject: @"a"]) {
		NSLog(@"包含了a");
	}
	
//	最后一个字符	
	NSString *result = [array lastObject];

//	根据索引获取值
	result = [array objectAtIndex: 2];
	
//	查询元素的位置	
	unsigned int index = [array indexOfObject: @"c"];
	
}

#pragma mark 数组内存管理
void arrayMemory() {
	Student *stu1 = [[Student alloc] init];
	Student *stu2 = [[Student alloc] init];
	Student *stu3 = [[Student alloc] init];
	
//	输出引用值	
	NSLog(@"stu1:%zi", [stu1 retainCount]);
	
//	当把一个对象塞进数组中时，这个歌对象的计时器会加1，即会进行 retain 操作
//	数组释放时，自动会将其所有对象 release 操作
	NSArray *array = [[NSArray alloc] arrayWithObjects: stu1, stu2, stu3, nil];
	
	NSLog(@"stu1:%zi", [stu1 retainCount]);
	
	[array release];
	
	NSLog(@"stu1:%zi", [stu1 retainCount]);
	
	[stu1 release];
	[stu2 release];
	[stu3 release];
}

#pragma mark 给数组中的元素发送消息
void testArrayMessage() {
//	静态方法创建 Student
	Student *stu1 = [Student student];
	Student *stu2 = [Student student];
	Student *stu3 = [Student student];

	NSArray *array = [NSArray arrayWithObjects: stu1, stu2, stu3, nil];
	
//	让数组里面的对象都调用 test 方法	
	[array makeObjectsPerformSelector: @selector(test)];

//	test2: 即: 也是方法名称的一部分
//	调用 test2 方法，有一个参数，且只支持一个参数	
	[array makeObjectsPerformSelector: @selector(test2: withObject: @"123")];
	
}

#pragma mark 数组遍历1
void testArrayForEach() {
	NSArray *array = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];
	
	int count = array.count;
	
	for(int i = 0; i < count; i++) {
//		id 即任何 OC 对象
//		id = void *	，即指向类型的指针
		id obj = [array objectAtIndex: i];
		NSLog(@"%i->%@", i, obj);
	}
}

#pragma mark 数组遍历2
void testArrayForEach2() {
	NSArray *array = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];

//	快速遍历
	int i = 0;
	for(id obj in array) {
		NSLog(@"%i->%@", i, obj);
		i++;
	}
}

#pragma mark 数组遍历3
void testArrayForEach3() {
	NSArray *array = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];
	
//	双击，xcode 会自动创建	
	[array enumerateObjetsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
		NSLog(@"%i->%@", idx, obj);
		
//		使用 stop 指定是否跳出循环
//		*stop = YES;		
	}];
}

#pragma mark 数组遍历4
void testArrayForEach4() {
	NSArray *array = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];
	
//	使用迭代器遍历
//	获取顺序迭代器
	NSEnumerator *enumerator = [array objectEnumerator];
	
//	反序迭代器	
	enumerator =[array reverseObjectEnumerator];
	
	id obj = nil;
	while(obj = [enumerator nextObject]) {
		NSLog(@"obj=%@", obj);
	}
	
//	返回迭代器的所有元素
//	如果放在遍历之后，没有元素；需要放在遍历之前，则有值
//	只是取出没有被遍历过的对象
	NSArray *arrays = [enumerator allObjects];
}

int main(int argc, const char *argv[]) {

    @autoreleasepool {
		
    }
    return 0;
}