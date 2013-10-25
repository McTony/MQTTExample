//
//  ViewController.h
//  MQTTExample
//
//  Created by Jeff Mesnil on 25/10/2013.
//  Copyright (c) 2013 Jeff Mesnil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MQTTKit.h>

@interface ViewController : UIViewController<MQTTClientDelegate>

@property (weak, nonatomic) IBOutlet UISwitch *subscribedSwitch;

@end
