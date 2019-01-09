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
    char answerInput[50];
    fgets(answerInput,50,stdin);
    
    //parse into NSString and remove spaces and line breaks
    NSString * outputString = [NSString stringWithCString:answerInput encoding:NSUTF8StringEncoding];;
    outputString = [outputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    return outputString;
}
@end
