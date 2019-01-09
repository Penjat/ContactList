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
        
        NSMutableArray * history = [[NSMutableArray alloc] init];
        while(true){
            
            InputCollector * inputCollector = [[InputCollector alloc] init];
            
            NSString *userInput = [inputCollector inputForPrompt:@"please enter a command:"];
            
            [history addObject:userInput];
            if([userInput isEqualToString:@"quit"]){
                NSLog(@"Goodbye.");
                break;
            }else if([userInput isEqualToString:@"new"]){
                
                //get the contact info
                NSString *contactEmail = [inputCollector inputForPrompt:@"Enter your E-Mail"];
                
                //check for duplicate email
                if(![contactList checkForDuplicate:contactEmail]){
                    NSLog(@"the email address %@ has already been added.",contactEmail);
                    continue;
                }
                NSString *contactName = [inputCollector inputForPrompt:@"Enter your username"];
                
                
                //create the contact
                Contact * newContact = [[Contact alloc] initWithName:contactName andEmail:contactEmail];
                
                //add to contact list
                [contactList addContact:newContact];
                
                NSLog(@"Contact %@  with email address %@ created sucsessfully.",[newContact name],[newContact email]);
                
            }else if([userInput isEqualToString:@"list"]){
                [contactList listContacts];
            }else if([userInput isEqualToString:@"show"]){
                
                NSLog(@"%lu contacts in list",[contactList contacts].count);
                
                //TODO ask about proper naming of a string before it is turned into a number
                NSString * contactIndexString = [inputCollector inputForPrompt:@"enter the index of the contact you wish to show"];
                NSNumber * contactIndex = @([contactIndexString integerValue]);
                
                [contactList showContact:contactIndex];
                
            }else if([userInput rangeOfString:@"find"].location == 0){
                NSLog(@"searching contacts...");
                NSArray * userInputs = [userInput componentsSeparatedByString:@" "];
                if(userInputs.count == 1){
                    //user didn't add any info after find
                    NSLog(@"please enter a search term after find");
                }else{
                    //search all the contacts for the term
                    NSNumber * numberOfResults = [contactList searchContactForTerm:userInputs[1]];
                    NSLog(@"%li results match the search term: %@",(long)[numberOfResults integerValue],userInputs[1]);
                }
                
            }else if([userInput isEqualToString:@"add-phone"]){
                
                NSString *contactIndexString = [inputCollector inputForPrompt:@"enter the contact index"];
                NSNumber *contactIndex = @([contactIndexString integerValue]);
                
                if(contactList.contacts.count <= [contactIndex integerValue]){
                    NSLog(@"invalid index");
                    continue;
                }
                
                NSString *phoneName = [inputCollector inputForPrompt:@"enter the name of the phone number (mobile, home, etc)"];
                NSString *phoneNumber = [inputCollector inputForPrompt:@"enter the phone number"];
                
                [contactList addPhoneNumber:phoneNumber withName:phoneName toContact:contactIndex];
                
                
            }else if([userInput isEqualToString:@"history"]){
                NSLog(@"printing history");
                for(int i=0; i<3;i++){
                    int index = ((int)history.count -2) - i;
                    if(index < 0){
                        continue;
                    }
                    NSString * pastCMD = history[index];
                    NSLog(@"%@",pastCMD);
                }
                
                
            }else{
                NSLog(@"not a valid command");
            }
        }
    }
        
    return 0;
}
