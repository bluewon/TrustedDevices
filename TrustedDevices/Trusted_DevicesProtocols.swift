//
//  Trusted_DevicesProtocols.swift
//  TrustedDevices
//
//  Created Quan Tran on 7/6/17.
//  Copyright © 2017 Quan Tran. All rights reserved.
//

import Foundation

//MARK: Wireframe -
protocol Trusted_DevicesWireframeProtocol: class {

}
//MARK: Presenter -
protocol Trusted_DevicesPresenterProtocol: class {

}

//MARK: Interactor -
protocol Trusted_DevicesInteractorProtocol: class {

  var presenter: Trusted_DevicesPresenterProtocol?  { get set }
}

//MARK: View -
protocol Trusted_DevicesViewProtocol: class {

  var presenter: Trusted_DevicesPresenterProtocol?  { get set }
}
