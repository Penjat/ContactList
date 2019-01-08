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
    }
    return self;
}
@end
