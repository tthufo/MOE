//
//  FacebookMOE.h
//  Pods
//
//  Created by Thanh Hai Tran on 3/20/17.
//
//

#import <Foundation/Foundation.h>

typedef void (^FBCompletion)(NSString * responseString, id object, int errorCode, NSString *description, NSError * error);

@interface FacebookMOE : NSObject <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

+ (FacebookMOE*)shareInstance;

- (void)applicationDidBecomeActive:(UIApplication *)application;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

- (void)signoutFacebook;
- (void)startLoginFacebookWithCompletion:(FBCompletion)completion;

- (void)startShareWithInfo:(NSArray*)items andBase:(UIView*)baseView andRoot:(UIViewController*)base andCompletion:(FBCompletion)completion;
- (void)startPickImageWithOption:(BOOL)isCamera andBase:(UIView*)baseView andRoot:(UIViewController*)base andCompletion:(FBCompletion)completion;

- (void)didShareFacebook:(NSDictionary*)dict andCompletion:(FBCompletion)completion;

- (void)startLoginTwitterWithCompletion:(FBCompletion)completion;

- (void)application_Twitter:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (BOOL)application_Twitter:(NSURL *)url;

@property (nonatomic, retain) NSString * facebookAppID;

@property (nonatomic, retain) NSString * twitterConsumerSecret;

@property (nonatomic, retain) NSString * twitterConsumerKey;

@property (nonatomic, retain) NSString * twitterUrlScheme;


@end

@interface NSDictionary (mutableM)

- (NSMutableDictionary*)reFormat;

@end

@interface NSArray (mutableM)

- (NSArray*)arrayWithMutable;

@end

@interface NSString (mutableM)

- (NSString *)convertPercentage;

@end
