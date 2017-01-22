//
//  PrimesCounter.m
//  AYAPrimesCounter
//
//  Created by Kapam6a on 22.01.17.
//  Copyright © 2017 Kapam6a. All rights reserved.
//

#import "PrimesCounter.h"

@implementation PrimesCounter

- (NSInteger)countPrimesSumForNumber:(NSInteger)number{
    bool *array = malloc(sizeof(bool)*number);
    
    for (int i = 0; i <= number; i ++){
        if (i == 0 || i == 1){
            array[i] = FALSE;
        }
        array[i] = TRUE;
    }
    
    for (int i = 2; i * i < number; i++) {
        if (array[i]){
            for (int j = i * i; j <= number; j += i){
                array[j] = FALSE;
            }
        }
    }
    
    NSInteger primesSum = 0;
    
    for (int i = 2; i <= number; i ++){
        if (array[i]){
            primesSum += i;
        }
    }
    
    free(array);
    
    return primesSum;
}

@end
