//
// VTDAppDelegate.m
//
// Copyright (c) 2014 Mutual Mobile (http://www.mutualmobile.com/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "VTDAppDelegate.h"

#import "VTDAppDelegateServices.h"
#import "VTDHockeyAppService.h"
#import "VTDAnalyticsService.h"

@interface VTDAppDelegate ()

@property (nonatomic, strong) VTDAppDelegateServices *services;

@end

@implementation VTDAppDelegate


- (VTDAppDelegateServices *)services {
    if (!_services) {
        _services = [[VTDAppDelegateServices alloc] init];
        [_services registerService:[[VTDHockeyAppService alloc] init]];
        [_services registerService:[[VTDAnalyticsService alloc] init]];
    }
    
    return _services;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.services application:application didFinishLaunchingWithOptions:launchOptions];
    return YES;
}



- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.services applicationDidEnterBackground:application];
}

@end
