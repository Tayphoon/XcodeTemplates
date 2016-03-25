//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>

extern NSString * const CellReuseIdentifier;

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

+ (NSString*)cellIdentifierForItemType:(NSInteger)type;
+ (Class)cellClassForItemType:(NSInteger)type;

@end
