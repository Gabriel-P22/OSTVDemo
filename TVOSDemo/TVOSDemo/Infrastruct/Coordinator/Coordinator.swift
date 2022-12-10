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
        var vc: UIViewController & Coordinating = HomeViewController()
        vc.coordinator = self
        navigationControler?.setViewControllers([vc], animated: true)
    }
    
}
