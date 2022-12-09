//
//  HomeViewController.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation
import UIKit

class HomeViewController: BaseViewController {
    
    var customView = HomeView()
    
    override func viewDidLoad() {
        view = customView
        customView.render()
    }
}
