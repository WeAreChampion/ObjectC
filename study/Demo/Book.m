// create by zt
// create on 2016-1-21

#import "Book.h"

@implementation Book

- (id) initWithNo: (int) no AndName: (char*) name {
	_no = no;
	_name = name;
}

- (void) dealloc {	
	[super dealloc];
}


@end