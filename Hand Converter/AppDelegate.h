//
//  AppDelegate.h
//  Hand Converter
//
//  Created by Huy Nguyen on 11/18/14.
//  Copyright (c) 2014 FirePoker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *inputTextField;
- (IBAction)fileSelect:(id)sender;

@end

