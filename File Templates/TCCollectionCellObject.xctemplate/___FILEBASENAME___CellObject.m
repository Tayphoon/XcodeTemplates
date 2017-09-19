//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___CellObject.h"
#import "___FILEBASENAMEASIDENTIFIER___Cell.h"

NSString * const ___FILEBASENAMEASIDENTIFIER___CellReuseIdentifier = @"___FILEBASENAMEASIDENTIFIER___CellReuseIdentifier";

@implementation ___FILEBASENAMEASIDENTIFIER___CellObject

- (NSString*)cellReuseIdentifier {
    return ___FILEBASENAMEASIDENTIFIER___CellReuseIdentifier;
}

- (Class)cellClass {
    return [___FILEBASENAMEASIDENTIFIER___Cell class];
}

@end
