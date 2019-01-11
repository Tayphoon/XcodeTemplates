//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_cellClass:identifier___CellObject.h"
#import "___VARIABLE_cellClass:identifier___Cell.h"

@implementation ___VARIABLE_cellClass:identifier___CellObject

- (NSString*)cellReuseIdentifier {
    return NSStringFromClass([self cellClass]);
}

- (Class)cellClass {
    return [___VARIABLE_cellClass:identifier___Cell class];
}

@end
