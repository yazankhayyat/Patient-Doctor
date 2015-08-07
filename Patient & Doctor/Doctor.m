//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Yazan Khayyat on 2015-08-07.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithSpecialization:(NSString *)specialization andName: (NSString *)name
{
    self = [super init];
    if (self) {
        _specialization = specialization;
        _name = name;
        _listOfPatients = [[NSMutableSet alloc]init];
        _prescriptions = @{@"Allergies" : @"Claritine", @"Headache": @"Panadol"};
        _listOfPatientsPrescriptions = [[NSMutableSet alloc]init];
        
    }
    return self;
}

-(BOOL)acceptPatient: (Patient *)potentialPatient {
    
    NSLog(@"Do you have a healthcard?");
    if (potentialPatient.healthCard == YES ) {
        NSLog(@"Yes! I can accept you as a patient");
        [self.listOfPatients addObject:potentialPatient];
        
        return YES;
    }else{
        
        NSLog(@"I'm sorry you need a healthcard");
        return NO;
    }
}

- (NSString *)requestMedications:(Patient *)patient {
    if ([self.listOfPatients containsObject:patient]) {
        NSLog(@"What are your symptoms?");
        for (NSString *theSymptom in patient.patientSymptoms) {
            NSLog(@"Pateint has %@", theSymptom);
            
            NSString *prescr = [self.prescriptions objectForKey:theSymptom];
            
            if (prescr) {
                [self.listOfPatientsPrescriptions addObject:prescr];
                return prescr;
            }
            
        }
    }else {
        
        NSLog(@"Sorry, I can't treat you");
    }
    return nil;
}


@end
