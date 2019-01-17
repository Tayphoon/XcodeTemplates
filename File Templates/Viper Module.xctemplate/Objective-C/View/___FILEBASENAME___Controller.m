//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___VARIABLE_viperModuleName:identifier___Controller.h"
#import "___VARIABLE_viperModuleName:identifier___ViewOutput.h"

@interface ___VARIABLE_viperModuleName:identifier___Controller()

@end

@implementation ___VARIABLE_viperModuleName:identifier___Controller

- (void)viewDidLoad {
	[super viewDidLoad];
    
	[self.output setupView];
}

#pragma mark - ___VARIABLE_viperModuleName:identifier___ViewInput

- (void)showAlertWithTitle:(NSString*)alertTitle message:(NSString*)message {
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:alertTitle
                                                                              message:message
                                                                       preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK"
                                                        style:UIAlertActionStyleDefault
                                                      handler:nil]];
    [self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - Private methods

#pragma mark - Layout

@end
