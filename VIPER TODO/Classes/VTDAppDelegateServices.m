//
//  VTDAppDelegateServices.m
//  VIPER TODO
//
//  Created by Dan Ursu on 14/01/16.
//  Copyright © 2016 Mutual Mobile. All rights reserved.
//

#import "VTDAppDelegateServices.h"

@interface VTDAppDelegateServices ()
@property (strong, nonatomic) NSMutableArray<UIApplicationDelegate> *services;
@end

@implementation VTDAppDelegateServices

- (void)registerService:(id<UIApplicationDelegate>)service {
    [self.services addObject:service];
}


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    [self.services enumerateObjectsUsingBlock:^(id<UIApplicationDelegate>   service, NSUInteger idx, BOOL * _Nonnull stop) {
        [service applicationDidFinishLaunching:application];
    }];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.services enumerateObjectsUsingBlock:^(id<UIApplicationDelegate>   service, NSUInteger idx, BOOL * _Nonnull stop) {
        [service applicationDidEnterBackground:application];
    }];
}


@end
