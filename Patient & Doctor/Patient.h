//
//  Patient.h
//  Patient & Doctor
//
//  Created by Yazan Khayyat on 2015-08-07.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject


@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL healthCard;
@property (nonatomic, strong) NSSet *patientSymptoms;

- (instancetype)initWithName: (NSString *)name andAge: (int)age andHealthCard: (BOOL)healthCard;

-(void)patientSymptom: (NSString *)symptom;

@end
