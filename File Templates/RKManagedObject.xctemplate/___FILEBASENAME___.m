//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <RestKit/RestKit.h>

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

+ (RKObjectMapping*)objectMappingForManagedObjectStore:(RKManagedObjectStore*)store {
    RKEntityMapping * objectMapping = [RKEntityMapping mappingForEntityForName:NSStringFromClass([self class])
                                                          inManagedObjectStore:store];
    
    return objectMapping;
}

@end
