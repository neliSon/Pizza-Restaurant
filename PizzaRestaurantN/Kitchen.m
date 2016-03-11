//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen



- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    if ([self.delegate respondsToSelector:@selector(kitchen:shouldMakePizzaOfSize:andToppings:)]) {
        
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                size = large;
            }
            Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
            return pizza;
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
        }
    }
    return 0;
}




@end
