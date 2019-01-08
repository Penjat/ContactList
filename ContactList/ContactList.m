//
//  ContactList.m
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
-(id)init{
    self = [super init];
    if(self){
        self.contacts = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addContact:(Contact*)newContact{
    [_contacts addObject:newContact];
}
-(void)listContacts{
    NSLog(@"%lu contacts to list",_contacts.count);
    int i = 0;
    for (Contact * contact in _contacts) {
        NSLog(@"%i: %@",i,[contact name]);
        i++;
    }
}
-(void)showContact:(NSNumber *)contactIndex{
    
    //check if value is in range
    if([contactIndex integerValue] < self.contacts.count ){
        Contact * contact = _contacts[[contactIndex integerValue]];
        NSLog(@"contact name: %@",[contact name]);
        NSLog(@"contact email: %@",[contact email]);
        return;
    }
    NSLog(@"your index is out of range");
}
@end
