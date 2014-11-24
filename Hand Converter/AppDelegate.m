//
//  AppDelegate.m
//  Hand Converter
//
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
    NSLog(@"fileSelect");
    // Create the File Open Dialog class.
    NSOpenPanel* openDlg = [NSOpenPanel openPanel];

    // Enable the selection of files in the dialog.
    [openDlg setCanChooseFiles:YES];

    if ( [openDlg runModal] == NSOKButton ) {

        for( NSURL *URL in [openDlg URLs] )
        {
            //NSString* fileName = [files objectAtIndex:i];
            [_inputTextField setStringValue: [URL path]];
        }
    }
}

- (IBAction)convert:(id)sender {
    NSString* inputFilePath =[_inputTextField stringValue];

    NSFileHandle *inputFileHandle = [NSFileHandle fileHandleForReadingAtPath:inputFilePath];
    NSAssert( inputFileHandle != nil, @"Failed to open handle for input file" );
   
    NSData *buffer = [inputFileHandle readDataOfLength:1024];
    while ([buffer length] > 0) {
        NSAssert( buffer != nil, @"Buffer is nil" );
        NSString *dataString = [[NSString alloc] initWithData:buffer
                                                      encoding:NSUTF8StringEncoding];
        NSLog(@"%@", dataString);

    }

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
