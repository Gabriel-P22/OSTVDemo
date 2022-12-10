//
//  MainCoordinator.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation
import UIKit

enum Event {
    
}

protocol Coordinator {
    var navigationControler: UINavigationController? { get set }
    
    func eventCurrend(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
