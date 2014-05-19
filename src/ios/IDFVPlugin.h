//
//  IDFVPlugin.h
//  localStorageBackupPlugin
//
//  Created by Julio Cesar Sanchez Hernandez on 5/19/14.
//
//

#import <Cordova/CDV.h>

@interface IDFVPlugin : CDVPlugin

-(void)getIdentifier:(CDVInvokedUrlCommand*)command;

@end
