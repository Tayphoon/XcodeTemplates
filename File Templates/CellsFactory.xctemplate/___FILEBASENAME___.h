//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>

extern NSString * const ___FILEBASENAMEASIDENTIFIER___ReuseIdentifier;

@interface ___FILEBASENAMEASIDENTIFIER___CellsFactory : NSObject

+ (NSString*)cellIdentifierForItemType:(NSInteger)type;
+ (Class)cellClassForItemType:(NSInteger)type;

@end
