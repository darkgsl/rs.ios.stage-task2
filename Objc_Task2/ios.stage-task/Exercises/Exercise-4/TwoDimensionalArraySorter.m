#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
//limit: subarray contains  values with same type
//check nil and empty
    //проверяем 2-х мерность массива
    if ((array.count == 0) || ([array[0] isKindOfClass:NSArray.class] == NO)){
        return @[];
    }
    
    NSMutableArray *numbers = [NSMutableArray new];
    NSMutableArray *words = [NSMutableArray new];
    for (NSArray *subArray in array) {
        if ([subArray[0] isKindOfClass:NSNumber.class] ) {
            [numbers addObjectsFromArray:subArray];
        } else if ( [subArray[0] isKindOfClass:NSString.class] ) {
            [words addObjectsFromArray:subArray];
        } else {
            return @[];
        }
    }

    if (numbers.count == 0 ) {
        return [words sortedArrayUsingSelector:@selector(compare:)];
    } else if (words.count == 0) {
        return [numbers sortedArrayUsingSelector:@selector(compare:)];
    }
    
    NSSortDescriptor *sortDescription = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    NSArray *result = [NSArray arrayWithObjects:[numbers sortedArrayUsingSelector:@selector(compare:)],[words sortedArrayUsingDescriptors:@[sortDescription]], nil];
    return result;
}

@end
