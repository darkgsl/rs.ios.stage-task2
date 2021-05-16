#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSUInteger result = 0;
    NSUInteger count = [array count];
    for (NSUInteger i = 0; i < count - 1 ; i += 1) {
        for (NSUInteger y = i + 1; y < count; y += 1) {
            if (ABS([array[i] integerValue] - [array[y] integerValue]) == [number integerValue]){
                result += 1;
            }
                
           // NSLog(@"i = %d, y = %d, array -> %@ %@", i,y, array[i],array[y]);
        }
    }
    
    
//    //limits: only unique value
//    NSUInteger result = 0;
//    NSSet *set = [[NSSet alloc] initWithArray:array];
//    for (NSNumber *value in array) {
//        if ([set containsObject:[NSNumber numberWithInteger: value.integerValue - number.integerValue]]) {
//            result += 1;
//        }
//    }
//    return result;
    return result;
}


@end
