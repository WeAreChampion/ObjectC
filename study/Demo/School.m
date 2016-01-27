// create by zt
// create on 2016-1-21

#import "School.h"

@implementation School

- (id) initWithNo: (int) no AndName: (char*) name {
	_no = no;
	_name = name;
}

- (void) dealloc {	
	[super dealloc];
}
@end