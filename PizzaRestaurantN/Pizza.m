//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

// Start by defining a pizza object. Let's give it a couple methods: one that returns a value for its size (small, medium, or large) and another that gives its toppings (an array of strings, like “ham, pineapple, cheese”). Make an enum type to represent the size.

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = [NSArray arrayWithArray:toppings];
        
        
    }
    return self;
}

@end
