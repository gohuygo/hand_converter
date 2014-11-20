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
    // Enable the selection of directories in the dialog.
    // [openDlg setCanChooseDirectories:YES];
    
    // Display the dialog.  If the OK button was pressed,
    // process the files.
    if ( [openDlg runModal] == NSOKButton ) {
        // Get an array containing the full filenames of all
        // files and directories selected.
        
        // Loop through all the files and process them.
        for( NSURL* URL in [openDlg URLs] )
        {
            //NSString* fileName = [files objectAtIndex:i];
            [_inputTextField setStringValue: [URL path]];
        }
    }
}

- (IBAction)convert:(id)sender {
    NSString *inputFilePath =[_inputTextField stringValue];
   // NSLog(inputFilePath);

    NSFileHandle *inputFileHandle = [NSFileHandle fileHandleForReadingAtPath:inputFilePath];
    NSAssert( inputFileHandle != nil, @"Failed to open handle for input file" );
    NSData *sampleEOF = [inputFileHandle readDataToEndOfFile];
    NSLog(@"%@", sampleEOF);

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
