//
//  Contact.m
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "Contact.h"

@implementation Contact
-(id)initWithName:(NSString *)name andEmail:(NSString *)email{
    self = [super init];
    if(self){
        self.name = name;
        self.email = email;
        self.phoneInfo = [[NSMutableDictionary alloc] init];
    }
    return self;
}
-(void)addPhoneWithName:(NSString *)phoneName andNumber:(NSString *)phoneNumber{
    [self.phoneInfo setObject: phoneNumber forKey: phoneName];
}
@end
