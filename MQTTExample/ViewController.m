//
//  ViewController.m
//  MQTTExample
//
//  Created by Jeff Mesnil on 25/10/2013.
//  Copyright (c) 2013 Jeff Mesnil. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)switchUpdated:(id)sender {
    AppDelegate *app = [[UIApplication sharedApplication] delegate];
    BOOL on = [sender isOn];
    [app.mqttClient publishString:[NSString stringWithFormat:@"%d", on]
                          toTopic:@"MQTTExample/LED"
                          withQos:0
                           retain:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
