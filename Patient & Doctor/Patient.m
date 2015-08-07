//
//  Patient.m
//  Patient & Doctor
//
//  Created by Yazan Khayyat on 2015-08-07.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName: (NSString *)name andAge: (int)age andHealthCard: (BOOL)healthCard
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCard = healthCard;
    }
    return self;
}

-(NSString *)description {
    return self.name;
}



@end
