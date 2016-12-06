//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

NSString * const ___FILEBASENAMEASIDENTIFIER___ReuseIdentifier = @"___FILEBASENAMEASIDENTIFIER___ReuseIdentifier";

@implementation ___FILEBASENAMEASIDENTIFIER___CellsFactory

+ (NSString*)cellIdentifierForItemType:(NSInteger)type {
    static NSDictionary * _cellsIdentifiers = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _cellsIdentifiers = @{
                              //Add your cells identifiers here
                              };
    });
    
    NSString * cellIdentifier = [_cellsIdentifiers objectForKey:@(type)];
    
    return (cellIdentifier) ? cellIdentifier : CellReuseIdentifier;
}

+ (Class)cellClassForItemType:(NSInteger)type {
    static NSDictionary * _cellsClasses = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _cellsClasses = @{
                          //Add your cells classes here
                          };
    });
    
    Class cellClass = [_cellsClasses objectForKey:@(type)];
    
    return (cellClass) ? cellClass :  [UITableViewCell class];
}

@end
