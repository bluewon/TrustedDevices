//
//  Trusted_DevicesPresenter.swift
//  TrustedDevices
//
//  Created Quan Tran on 7/6/17.
//  Copyright © 2017 Quan Tran. All rights reserved.
//

import UIKit

class Trusted_DevicesPresenter: Trusted_DevicesPresenterProtocol {

    weak private var view: Trusted_DevicesViewProtocol?
    private let interactor: Trusted_DevicesInteractorProtocol
    private let router: Trusted_DevicesWireframeProtocol

    init(interface: Trusted_DevicesViewProtocol, interactor: Trusted_DevicesInteractorProtocol, router: Trusted_DevicesWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router

        self.interactor.presenter = self
    }

}
