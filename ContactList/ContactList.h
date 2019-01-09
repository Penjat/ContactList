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
-(void)showContact:(NSNumber*)contactIndex;
-(NSNumber*)searchContactForTerm:(NSString*)searchTerm;
-(BOOL)checkForDuplicate:(NSString*)newEmail;
-(void)addPhoneNumber:(NSString*)phoneNumber withName:(NSString*)phoneName toContact:(NSNumber*)contactIndex;

@end

NS_ASSUME_NONNULL_END
