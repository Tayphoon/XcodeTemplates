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

@property (nonatomic, readonly) UIActivityIndicatorView * activityIndicator;

@end

@implementation ___VARIABLE_viperModuleName:identifier___Controller

- (void)viewDidLoad {
	[super viewDidLoad];
    
    _activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    _activityIndicator.hidesWhenStopped = YES;
    _activityIndicator.backgroundColor = [UIColor clearColor];
    _activityIndicator.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_activityIndicator];
    [self configureActivityIndicatorLayoutConstraints];

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

- (void)showActivityIndicator {
    [self.activityIndicator startAnimating];
}

- (void)hideActivityIndicator {
    [self.activityIndicator stopAnimating];
}

#pragma mark - Private methods

#pragma mark - Layout

- (void)configureActivityIndicatorLayoutConstraints {
    [self.activityIndicator.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.activityIndicator.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.activityIndicator.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [self.activityIndicator.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
}

@end
