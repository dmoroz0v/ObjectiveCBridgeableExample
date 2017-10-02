//
//  DMZModelA.h
//  TestReferenceConvertible
//
//  Created by Denis Morozov on 30.09.17.
//  Copyright © 2017 Denis Morozov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMZModelA : NSObject<NSCopying>

@property (nonatomic, strong) NSString *s;

- (instancetype)initWithS:(NSString *)s;

@end
