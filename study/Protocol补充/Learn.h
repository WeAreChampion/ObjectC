// create by zt
// create on 2016-1-16

#import<Foundation/Foundation.h>

//	ֻ�� .h �ļ�������һ��Э�� Learn
//	����Э�飬Ĭ��ʵ�� NSObject Э��
@protocol Learn <NSObject>

//	Ĭ���� @required
- (void) test3;

//	OC �����﷨
//	��Ȼ������˵�Ǳ���ʵ�֣�����������鲻����
//	@required �����ϱ�ʾ����ʵ�ֵķ���
@required
- (void) test;

- (void) test1;

//	@optional ��ʾ��ѡ(����ʵ�֣�Ҳ����ʵ��)
@optional
- (void) test2;

@end
