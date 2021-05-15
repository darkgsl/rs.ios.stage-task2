#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    //limits: only unique value
    NSUInteger result = 0;
    NSSet *set = [[NSSet alloc] initWithArray:array];
    for (NSNumber *value in array) {
        if ([set containsObject:[NSNumber numberWithInteger: value.integerValue - number.integerValue]]) {
            result += 1;
        }
    }
    return result;
}

@end
