//
//  AppDelegate.h
//  Hand Converter
//
//  Copyright (c) 2014 FirePoker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *inputTextField;
- (IBAction)fileSelect:(id)sender;
- (IBAction)convert:(id)sender;

@end

