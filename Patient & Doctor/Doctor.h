//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Yazan Khayyat on 2015-08-07.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableSet *listOfPatients;
@property (nonatomic, strong)NSMutableSet *listOfPatientsPrescriptions;
@property (nonatomic, strong) NSDictionary *prescriptions;

- (instancetype)initWithSpecialization:(NSString *)specialization andName: (NSString *)name;

-(BOOL)acceptPatient: (Patient *)potentialPatient;

- (NSString *)requestMedications:(Patient *)patient;

    
@end
