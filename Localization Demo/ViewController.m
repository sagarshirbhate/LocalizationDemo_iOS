//
//  ViewController.m
//  Localization Demo
//
//  Created by Sagar Shirbhate on 07/01/16.
//  Copyright © 2016 Sagar Shirbhate. All rights reserved.
//

#import "ViewController.h"

#define currentLanguageBundle [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[[NSLocale preferredLanguages] objectAtIndex:0] ofType:@"lproj"]]
#define ELocalizedStringFromTable(key,stringTable)\
NSLocalizedStringFromTableInBundle(key, stringTable, currentLanguageBundle, @"")
#define ELocalizedString(key) ELocalizedStringFromTable(key, @"ViewController");


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)english:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"en", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
    
}
- (IBAction)french:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"fr", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
}
- (IBAction)chinese:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"zh", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSString * str = ELocalizedString(@"title");
    
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
}
- (IBAction)arabic:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"ar", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
    
}
- (IBAction)marathhi:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"mr", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
    
}
- (IBAction)hindi:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"hi-IN", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
     NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
}
- (IBAction)bengali:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"bn", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
}
- (IBAction)gujrati:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"gu", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
}
- (IBAction)tamil:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"ta", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString * str = ELocalizedString(@"title");
    _alertLbl.text =str;
    _message.text =ELocalizedString(@"msg");
}

@end
