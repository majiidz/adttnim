
#import <ChatKit/CKConversation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>

#define PLIST @"com.majid.welcome"
static NSString *GetNSString(NSString *pkey, NSString *defaultValue){
	NSMutableDictionary *Dict = [NSMutableDictionary dictionaryWithDictionary:[NSMutableDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/var/mobile/Library/Preferences/%@.plist",PLIST]]];

	return [Dict objectForKey:pkey] ? [Dict objectForKey:pkey] : defaultValue;
}

static BOOL GetBool(NSString *pkey, BOOL defaultValue) {
 NSDictionary *Dict = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/var/mobile/Library/Preferences/%@.plist",PLIST]];

 return [Dict objectForKey:pkey] ? [[Dict objectForKey:pkey] boolValue] : defaultValue;
}

%hook SpringBoard
- (void) applicationDidFinishLaunching:
(id)application{
   NSString *welcomeMessage = 
GetNSString(@"prefName", @"Default text");

 %orig;
BOOL Enable = GetBool(@"srre", NO);
//add
if (Enable) { 
UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" 
message:welcomeMessage
 delegate:nil
cancelButtonTitle:@"OK"
otherButtonTitles:nil];
   [alert show];
}
%end
