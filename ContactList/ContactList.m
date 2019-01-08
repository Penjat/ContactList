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
    int i = 0;
    for (Contact * contact in _contacts) {
        NSLog(@"%i: %@",i,[contact name]);
        i++;
    }
}
@end
