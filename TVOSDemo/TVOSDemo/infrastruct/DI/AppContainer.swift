//
//  AppContainer.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation
import Swinject

class AppContainer {
    
    public static func registerContainer() {
        
    }
    
    public static func getContainer() -> Container? {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            return delegate.container
        }
        return nil
    }
}
