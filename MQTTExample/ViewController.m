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

- (IBAction)switchUpdated:(id)sender {
    AppDelegate *app = [[UIApplication sharedApplication] delegate];
    BOOL on = [sender isOn];
    [app.mqttClient publishString:[NSString stringWithFormat:@"%d", on]
                          toTopic:@"MQTTExample/LED"
                          withQos:0
                           retain:YES];
}


#pragma mark - MQTTClientDelegate

- (void)client:(MQTTClient *)client didConnect:(NSUInteger)code
{
    [client subscribe:@"MQTTExample/LED"];
}

- (void)client:(MQTTClient *)client didReceiveMessage:(MQTTMessage *)message
{
    BOOL on =[message.payload boolValue];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.subscribedSwitch setOn:on animated:YES];
    });
}

@end
