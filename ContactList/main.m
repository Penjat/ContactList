//
//  main.m
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList * contactList = [[ContactList alloc] init];
        while(true){
            
            InputCollector * inputCollector = [[InputCollector alloc] init];
            
            NSString *userInput = [inputCollector inputForPrompt:@"please enter a command:"];
            
            if([userInput isEqualToString:@"quit"]){
                NSLog(@"Goodbye.");
                break;
            }else if([userInput isEqualToString:@"new"]){
                
                //get the contact info
                NSString *contactName = [inputCollector inputForPrompt:@"Enter your username"];
                NSString *contactEmail = [inputCollector inputForPrompt:@"Enter your E-Mail"];
                
                //create the contact
                Contact * newContact = [[Contact alloc] initWithName:contactName andEmail:contactEmail];
                
                //add to contact list
                [contactList addContact:newContact];
                
                NSLog(@"Contact %@  with email address %@ created sucsessfully.",[newContact name],[newContact email]);
                
            }else if([userInput isEqualToString:@"list"]){
                [contactList listContacts];
            }else{
                NSLog(@"not a valid command");
            }
        }
    }
        
    return 0;
}
