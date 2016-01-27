//	Student+Test.h
//	category
//	Create by zt on 16-1-18

#include"Student.h"
//	文件名称一般是 类名+分类名称

//	在不改变 Student 的情况下对其进行扩展方法
//	() 代表是一个分类
//	Test 即分类的名称

@interface Student (Test)

//	分类只能拓展方法，不能增加成员变量

//	拓展的方法
- (void) test2;

@end