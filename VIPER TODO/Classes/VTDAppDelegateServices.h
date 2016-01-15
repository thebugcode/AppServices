//
//  VTDAppDelegateServices.h
//  VIPER TODO
//
//  Created by Dan Ursu on 14/01/16.
//  Copyright © 2016 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VTDAppDelegateServices : NSObject <UIApplicationDelegate>

- (void)registerService:(id<UIApplicationDelegate>)service;

@end
