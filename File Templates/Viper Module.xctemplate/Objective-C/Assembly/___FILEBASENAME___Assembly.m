//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___VARIABLE_viperModuleName:identifier___Assembly.h"
#import "___VARIABLE_viperModuleName:identifier___Controller.h"
#import "___VARIABLE_viperModuleName:identifier___Router.h"
#import "___VARIABLE_viperModuleName:identifier___Presenter.h"
#import "___VARIABLE_viperModuleName:identifier___Interactor.h"

@implementation ___VARIABLE_viperModuleName:identifier___Assembly

- (UIViewController*)moduleView {
    ___VARIABLE_viperModuleName:identifier___Router * router = [[___VARIABLE_viperModuleName:identifier___Router alloc] init];
    ___VARIABLE_viperModuleName:identifier___Interactor * interactor = [[___VARIABLE_viperModuleName:identifier___Interactor alloc] init];
    ___VARIABLE_viperModuleName:identifier___Controller * controller = [[___VARIABLE_viperModuleName:identifier___Controller alloc] init];
    ___VARIABLE_viperModuleName:identifier___Presenter * presenter = [[___VARIABLE_viperModuleName:identifier___Presenter alloc] init];
    
    router.transitionHandler = controller;

    interactor.output = presenter;
    
    presenter.view = controller;
    presenter.interactor = interactor;
    presenter.router = router;
    
    controller.output = presenter;
    
    return controller;
}

@end
