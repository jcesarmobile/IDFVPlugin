Identifier For Vendor Plugin
=============

This plugin makes possible to get the iOS Identifier For Vendor code on phonegap apps

On iOS 5 the error callback is called because Identifier For Vendor isn't supported on iOS 5

Installation:
============

cordova plugin add https://github.com/jcesarmobile/IDFVPlugin.git


Usage:
=====

window.IDFVPlugin.getIdentifier(function(result){
                                        alert(result);
                                        },function(error){
                                        alert(error);
                                        });
