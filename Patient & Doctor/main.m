//
//  main.m
//  Patient & Doctor
//
//  Created by Yazan Khayyat on 2015-08-07.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
        Patient *patient = [[Patient alloc]initWithName:@"Yazan" andAge:23 andHealthCard:YES];
        Patient *patient2 = [[Patient alloc]initWithName:@"Ed" andAge:50 andHealthCard:YES];
        patient.patientSymptoms = [[NSSet alloc]initWithArray:@[@"Gas", @"Allergies"]];
        patient2.patientSymptoms = [[NSSet alloc]init];
        
        Doctor *onlyDoctor = [[Doctor alloc]initWithSpecialization:@"Neurologist" andName:@"Dr.Cory"];
        
        if ([onlyDoctor acceptPatient:patient]) {
            NSString *prescription = [onlyDoctor requestMedications:patient];
            NSLog(@"%@", prescription);
            NSString *prescription2 = [onlyDoctor requestMedications:patient2];
    
            
            

        }
        
    }
    return 0;
}
