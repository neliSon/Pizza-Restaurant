//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "Manager2.h"

int main(int argc, const char * argv[])
{
    
    //In main.m, take the text input by a user, and use it to ask the kitchen to make a pizza. If the user inputs small ham pineapple cheese, that should generate a Pizza object with a PizzaSize of Small, and a toppings array containing ham, pineapple, and cheese.
    
    
    @autoreleasepool {
        
 
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        // make a manager


        
        
        // tell the kitchen who its delegate is
        NSLog(@"Please pick your manager by typing nice or mean:");
        NSLog(@"> ");
        char str[50];
        fgets (str, 50, stdin);
        
        NSString *inputMananger = [[NSString alloc] initWithUTF8String:str];
        inputMananger = [inputMananger stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([inputMananger isEqualToString:@"nice"]) {
            Manager2 *managerNice = [Manager2 new];
            restaurantKitchen.delegate = managerNice;
        } else if ([inputMananger isEqualToString:@"mean"]) {
            Manager *managerMean = [Manager new];
            restaurantKitchen.delegate = managerMean;
        }

        NSLog(@"Please pick your pizza size and toppings:");
        
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
            
            Pizza *pizza1 = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            
            
            if (pizza1 != 0) {
            NSLog(@"Enjoy your %@ %@ pizza.", [pizza1 sizeAsString], pizza1.toppings);
            } else {
                NSLog(@"No pizza for you.");
            }
            //            [restaurantKitchen makePizzaWithSize:size toppings:commandWords[1]];
            // And then send some message to the kitchen...
            
        }
        
    }
    return 0;
}

