//
//  InputCollector.m
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
-(NSString *)inputForPrompt:(NSString *)promptString{
    
    //prompt the user for input
    NSLog(@"%@",promptString);
    char answerInput[10];
    fgets(answerInput,10,stdin);
    
    //parse into NSString and remove spaces and line breaks
    NSString * outputString = [NSString stringWithCString:answerInput encoding:NSUTF8StringEncoding];;
    outputString = [outputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return outputString;
}
@end
