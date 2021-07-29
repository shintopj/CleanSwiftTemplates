//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

protocol ___VARIABLE_sceneName___RoutingLogic: AnyObject {
    func routeToNext()
}

protocol ___VARIABLE_sceneName___DataPassing: AnyObject {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

final class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___DataPassing {

    private weak var viewController: ___VARIABLE_sceneName___ViewController?
    private(set) weak var dataStore: ___VARIABLE_sceneName___DataStore?
    
    init(viewController: ___VARIABLE_sceneName___ViewController?, dataStore: ___VARIABLE_sceneName___DataStore?) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

// MARK: - RoutingLogic

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RoutingLogic {

    func routeToNext() {
        //guard let dataStore = dataStore else { return }
        
        let destinationViewController = ___VARIABLE_sceneName___Configurator.create(/*name: dataStore.name*/)
        viewController?.navigationController?.pushViewController(destinationViewController, animated: true)
    }
}
