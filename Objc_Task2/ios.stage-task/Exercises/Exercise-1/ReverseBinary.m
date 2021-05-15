#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    if (n <= 0) {
        return  0;
    }
    UInt8 value = n;
    NSMutableArray *array = [NSMutableArray new];
    //make binary
    while (value) {
        [array addObject: [NSNumber numberWithUnsignedShort: value % 2]];
        value /= 2;
    }

    //check length
    if (array.count < 8) {
        NSUInteger count = 8 - array.count;
        for (NSUInteger i = 0; i < count; i += 1) {
            [array addObject: [NSNumber numberWithUnsignedShort: 0]];
        }
        
    }
    
    //make integer
    for ( NSNumber *number in array) {
        value = value * 2 + number.shortValue;
    }

    return value;
}
