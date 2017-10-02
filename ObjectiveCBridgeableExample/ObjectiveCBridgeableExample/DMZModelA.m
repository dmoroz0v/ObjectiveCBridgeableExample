//
//  DMZModelA.m
//  TestReferenceConvertible
//
//  Created by Denis Morozov on 30.09.17.
//  Copyright © 2017 Denis Morozov. All rights reserved.
//

#import "DMZModelA.h"

@implementation DMZModelA

- (instancetype)initWithS:(NSString *)s
{
	self = [super init];
	
	_s = s;
	
	return self;
}

- (id)copyWithZone:(nullable NSZone *)zone
{
	return [DMZModelA new];
}

@end
