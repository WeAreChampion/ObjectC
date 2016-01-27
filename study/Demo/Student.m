// create by zt
// create on 2016-1-21

#import "Student.h"

#import "Classes.h"

- (id) initWithNo: (int) no AndName: (char*) name {
	_no = no;
	_name = name;
}


@implementation Student

- (void) dealloc {
	[classes release];
	
	[super dealloc];
}

@end