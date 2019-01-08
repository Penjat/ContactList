//
//  ContactList.h
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
@property (nonatomic,strong) NSMutableArray * contacts;
-(id)init;
-(void)addContact:(Contact*)newContact;
-(void)listContacts;
@end

NS_ASSUME_NONNULL_END
