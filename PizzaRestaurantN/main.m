//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"


int main(int argc, const char * argv[])
{
    
    //In main.m, take the text input by a user, and use it to ask the kitchen to make a pizza. If the user inputs small ham pineapple cheese, that should generate a Pizza object with a PizzaSize of Small, and a toppings array containing ham, pineapple, and cheese.
    
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            PizzaSize size;     // declare variable size
            NSMutableArray *toppings = [NSMutableArray arrayWithArray:commandWords];
            [toppings removeObjectAtIndex:0];
            
            if ([commandWords[0] isEqualToString:@"small"]) {
                size = small;
                
            }else if ([commandWords[0] isEqualToString:@"medium"]) {
                size = medium;
                
            }else if ([commandWords[0] isEqualToString:@"large"]) {
                size = large;
                
            }
            
            [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            
            NSLog(@"Enjoy your pizza");
            //            [restaurantKitchen makePizzaWithSize:size toppings:commandWords[1]];
            // And then send some message to the kitchen...
            
        }
        
    }
    return 0;
}

