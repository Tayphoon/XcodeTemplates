//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "___VARIABLE_viperModuleName:identifier___ViewInput.h"

@protocol ___VARIABLE_viperModuleName:identifier___ViewOutput;

@interface ___VARIABLE_viperModuleName:identifier___Controller : NSWindowController <___VARIABLE_viperModuleName:identifier___ViewInput>

@property (nonatomic, strong) id<___VARIABLE_viperModuleName:identifier___ViewOutput> output;

@end

