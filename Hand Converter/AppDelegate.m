//
//  AppDelegate.m
//  Hand Converter
//
//  Created by Huy Nguyen on 11/18/14.
//  Copyright (c) 2014 FirePoker. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

//Tap on the File input
- (IBAction)fileSelect:(id)sender {
    
    // Create the File Open Dialog class.
    NSOpenPanel* openDlg = [NSOpenPanel openPanel];
    
    // Enable the selection of files in the dialog.
    [openDlg setCanChooseFiles:YES];
    
    // Enable the selection of directories in the dialog.
    // [openDlg setCanChooseDirectories:YES];
    
    // Display the dialog.  If the OK button was pressed,
    // process the files.
    if ( [openDlg runModal] == NSOKButton ) {
        // Get an array containing the full filenames of all
        // files and directories selected.
        NSArray* files = [openDlg URLs];
        // Loop through all the files and process them.
        for(int i = 0; i < [files count]; i++ )
        {
            NSString* fileName = [files objectAtIndex:i];
            NSLog(@"received fileSelect");
            // Do something with the filename.
        }
    }
    
}

- (IBAction)takeFileNameForInput:(id)sender {
    NSString *senderName = nil;
    if (sender == self.inputTextField){
        senderName = @"inputTextField";
    } else {
        senderName = @"importFileButton";
    }
    NSLog(@"%@ sent takeFileNameForInput with value %@", senderName, [sender stringValue]);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
