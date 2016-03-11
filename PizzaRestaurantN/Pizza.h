//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Nelson Chow on 2016-03-10.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum PizzaSize {
    small,
    medium,
    large,
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic) NSArray *toppings;
@property (nonatomic) PizzaSize size;

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;

- (NSString *) sizeAsString;

// Start by defining a pizza object. Let's give it a couple methods: one that returns a value for its size (small, medium, or large) and another that gives its toppings (an array of strings, like “ham, pineapple, cheese”). Make an enum type to represent the size.


@end
