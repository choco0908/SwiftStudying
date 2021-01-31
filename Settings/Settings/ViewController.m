//
//  ViewController.m
//  Settings
//
//  Created by HG90 on 2021/01/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"boolKey"];
    [[NSUserDefaults standardUserDefaults] setFloat:12.3f forKey:@"floatKey"];
    [[NSUserDefaults standardUserDefaults] setDouble:12.3 forKey:@"doubleKey"];
    [[NSUserDefaults standardUserDefaults] setInteger:123 forKey:@"intKey"];
    
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    [[NSUserDefaults standardUserDefaults] setURL:url forKey:@"urlKey"];
    
    [[NSUserDefaults standardUserDefaults] setObject:@"String Value" forKey:@"strKey"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

- (IBAction)logUserDefaults:(id)sender {
    NSArray *arrValue = [[NSUserDefaults standardUserDefaults] arrayForKey:@"arrayKey"];
    NSData *dataValue = [[NSUserDefaults standardUserDefaults] dataForKey:@"dataKey"];
    NSDictionary *dictValue = [[NSUserDefaults standardUserDefaults] dictionaryForKey:@"dictKey"];
    id objValue = [[NSUserDefaults standardUserDefaults] objectForKey:@"objKey"];
    NSString *strValue = [[NSUserDefaults standardUserDefaults] stringForKey:@"strKey"];
    NSArray *strArrayValue = [[NSUserDefaults standardUserDefaults] stringArrayForKey:@"strArrayKey"];
    
    NSURL *urlValue = [[NSUserDefaults standardUserDefaults] URLForKey:@"urlKey"];
    double doubleValue = [[NSUserDefaults standardUserDefaults] doubleForKey:@"doubleKey"];
    float floatValue = [[NSUserDefaults standardUserDefaults] floatForKey:@"floatKey"];
    NSInteger intValue = [[NSUserDefaults standardUserDefaults] integerForKey:@"inKey"];
    BOOL boolValue = [[NSUserDefaults standardUserDefaults] boolForKey:@"boolKey"];
    
    NSString *userId = [[NSUserDefaults standardUserDefaults] stringForKey:@"userId"];
    NSLog(@"%@",userId);
    
    NSInteger country = [[NSUserDefaults standardUserDefaults] integerForKey:@"userCountry"];
    switch (country) {
        case 0:
            NSLog(@"Korea");
            break;
        case 1:
            NSLog(@"China");
            break;
        case 2:
            NSLog(@"US");
            break;
        default:
            break;
    }
    
    NSLog(@"%@",(boolValue ? @"YES" : @"NO"));
    
    NSLog(@"%@",urlValue);
}

@end
