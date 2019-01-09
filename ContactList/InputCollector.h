//
//  InputCollector.h
//  ContactList
//
//  Created by Spencer Symington on 2019-01-08.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
@property (nonatomic,strong) NSMutableArray * history;
-(NSString *)inputForPrompt:(NSString *)promptString;


@end

NS_ASSUME_NONNULL_END
