iSpeechPlugin
=============

This plugin makes possible to use iSpeech library in phonegap iOS projects, so you can use Text To Speech and Speech Recognition


Installation:
============

cordova plugin add https://github.com/jcesarmobile/iSpeechPlugin.git


Usage:
=====

First of all you have to init the plugin and provide an API key, register on iSpeech web to get one https://www.ispeech.org/developers
You can use the demo key "developerdemokeydeveloperdemokey", but it adds an undesired locution

var key = "developerdemokeydeveloperdemokey";
window.iSpeech.init(key);


Text to Speech:

window.iSpeech.speak(speakPluginResultHandler,nativePluginErrorHandler,"some text");


Speech Recognition:

Right now it only recognize up to 10 seconds and only return a value with a confidence greater than 0.3, this values can't be configured from javascript, you should edit iSpeech.m source code to change it. The same for the locale used to recognize.

window.iSpeech.recognize(recognizePluginResultHandler,nativePluginErrorHandler);

If everything was ok you will get the recognized string on the recognizePluginResultHandler


There is a full working project example on the repository
