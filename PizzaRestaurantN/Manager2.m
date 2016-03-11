//
//  Manager2.m
//  PizzaRestaurantN
//
//  Created by Nelson Chow on 2016-03-11.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "Manager2.h"

@implementation Manager2

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Thank you for supporting LastSlice!");
}

@end
