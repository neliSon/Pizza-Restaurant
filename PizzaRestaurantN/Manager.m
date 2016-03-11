//
//  Manager.m
//  PizzaRestaurantN
//
//  Created by Nelson Chow on 2016-03-11.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }else{
        return YES;
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}


@end
