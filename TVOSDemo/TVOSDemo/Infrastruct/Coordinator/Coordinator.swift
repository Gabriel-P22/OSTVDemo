//
//  Coordinator.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationControler: UINavigationController?
    
    func eventCurrend(with type: Event) {
        
    }
    
    func start() {
        let viewModel: HomeViewModelProtocol = HomeViewModel()
        var vc: UIViewController & Coordinating = HomeViewController(viewModel: viewModel)
        vc.coordinator = self
        navigationControler?.setViewControllers([vc], animated: true)
    }
    
}
