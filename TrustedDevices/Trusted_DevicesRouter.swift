//
//  Trusted_DevicesRouter.swift
//  TrustedDevices
//
//  Created Quan Tran on 7/6/17.
//  Copyright © 2017 Quan Tran. All rights reserved.
//

import UIKit

class Trusted_DevicesRouter: Trusted_DevicesWireframeProtocol {
    
    weak var viewController: UIViewController?
    class var sharedInstance : Trusted_DevicesRouter {
        struct Static {
            static let instance : Trusted_DevicesRouter = Trusted_DevicesRouter()
        }
        return Static.instance
    }
    static func createModule(_ window: UIWindow) {
        // Change to get view from storyboard if not using progammatic UI
        let view = Trusted_DevicesViewController()
        let interactor = Trusted_DevicesInteractor()
        let router = Trusted_DevicesRouter()
        let presenter = Trusted_DevicesPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        //setup view root
        self.sharedInstance.viewController = view
        let navController = UINavigationController.init(rootViewController: view)
        window.rootViewController = navController
    }
}
