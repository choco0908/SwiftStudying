//
//  ViewController.m
//  BackgroundTaskSample
//
//  Created by HG90 on 2021/02/01.
//

#import "ViewController.h"

@interface ViewController ()
@property UIBackgroundTaskIdentifier taskId;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void) simulateDownload {
    for (int i = 0; i < 200; i++) {
        NSLog(@"download # %i",i);
        
        UIApplicationState currentState = [[UIApplication sharedApplication] applicationState];
        switch (currentState) {
            case UIApplicationStateActive:
                NSLog(@"active");
                break;
            case UIApplicationStateInactive:
                NSLog(@"inactive");
                break;
            case UIApplicationStateBackground:
                NSLog(@"background");
                NSLog(@"Remaining Time: %.1f",[[UIApplication sharedApplication] backgroundTimeRemaining]);
            default:
                break;
        }
        
        [NSThread sleepForTimeInterval:1];
    }
}

- (IBAction)performTask:(id)sender {
    [self simulateDownload];
}

- (IBAction)performBackgroundTask:(id)sender {
    UIApplication *sharedApp = [UIApplication sharedApplication];
    _taskId = [sharedApp beginBackgroundTaskWithExpirationHandler:^{
        [sharedApp endBackgroundTask:_taskId];
        _taskId = UIBackgroundTaskInvalid;
    }];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self simulateDownload];
        
        [sharedApp endBackgroundTask:_taskId];
        _taskId = UIBackgroundTaskInvalid;
    });
}

- (IBAction)showMessage:(id)sender {
    NSLog(@"Process Button Touch");
}



@end
