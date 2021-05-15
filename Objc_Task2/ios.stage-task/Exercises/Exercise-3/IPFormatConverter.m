#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray.count == 0){
        return @"";
    }
    
    for (NSNumber *value in numbersArray) {
        NSInteger number = value.integerValue;
        if (number > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else if (number < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:numbersArray];
    
    //check length
    if (numbersArray.count < 4) {
        NSUInteger count = 4 - array.count;
        for (NSUInteger i = 0; i < count; i += 1) {
            [array addObject: [NSNumber numberWithUnsignedShort: 0]];
        }
    }
    
    return [NSString stringWithFormat:@"%d.%d.%d.%d", [array[0] integerValue], [array[1] integerValue], [ array[2] integerValue], [array[3] integerValue]];

}

@end
