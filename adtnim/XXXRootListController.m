#import <Foundation/Foundation.h>
#import "XXXRootListController.h"
@implementation XXXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}


-(void)Save
{
[self.view endEditing:YES];
}

- (void)oo  {
   
pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}


-(void) Tele {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/X77TX"] options:@{} completionHandler:nil];
}



@end
