//
//  Contact.h
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

-(id)initWithName:(NSString*)name andEmail:(NSString*)email;
@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString * email;

@end

NS_ASSUME_NONNULL_END
