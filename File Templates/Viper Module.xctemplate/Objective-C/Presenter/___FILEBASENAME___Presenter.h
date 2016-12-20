//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "___VARIABLE_viperModuleName:identifier___ViewOutput.h"
#import "___VARIABLE_viperModuleName:identifier___InteractorOutput.h"

@protocol ___VARIABLE_viperModuleName:identifier___ViewInput;
@protocol ___VARIABLE_viperModuleName:identifier___InteractorInput;
@protocol ___VARIABLE_viperModuleName:identifier___RouterInput;

@interface ___VARIABLE_viperModuleName:identifier___Presenter : NSObject <___VARIABLE_viperModuleName:identifier___ViewOutput, ___VARIABLE_viperModuleName:identifier___InteractorOutput>

@property (nonatomic, weak)   id<___VARIABLE_viperModuleName:identifier___ViewInput> view;
@property (nonatomic, strong) id<___VARIABLE_viperModuleName:identifier___InteractorInput> interactor;
@property (nonatomic, strong) id<___VARIABLE_viperModuleName:identifier___RouterInput> router;

@end

