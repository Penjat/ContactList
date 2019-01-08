//
//  main.m
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true){
            NSLog(@"please provide some input");
            InputCollector * inputCollector = [[InputCollector alloc] init];
            
            NSString *userInput = [inputCollector inputForPrompt:@"Enter your username"];
            
            if([userInput isEqualToString:@"quit"]){
                NSLog(@"Goodbye.");
                break;
            }
        }
    }
        
    return 0;
}
