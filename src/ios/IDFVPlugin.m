//
//  IDFVPlugin.m
//  localStorageBackupPlugin
//
//  Created by Julio Cesar Sanchez Hernandez on 5/19/14.
//
//

#import "IDFVPlugin.h"

@implementation IDFVPlugin

-(void)getIdentifier:(CDVInvokedUrlCommand*)command {
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(identifierForVendor)]) {
     
        [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[[[UIDevice currentDevice] identifierForVendor] UUIDString]] callbackId:command.callbackId];
    } else {
        
        [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"not supported"] callbackId:command.callbackId];
    }
    
}

@end
