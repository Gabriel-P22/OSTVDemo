//
//  HomeViewModel.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation

protocol HomeViewModelProtocol {
    var listComponents: [CustomComponentProtocol] { get set }
    
    func getComponent() -> [CustomComponentProtocol]
    func setupComponent()
}

class HomeViewModel: HomeViewModelProtocol {
    var listComponents: [CustomComponentProtocol] = []
    
    let principalFilms: PrincipalFilmsCarrousel = PrincipalFilmsCarrousel()
        
    func setupComponent() {
        
        principalFilms.type = .principalFilms
        principalFilms.render()
        
        listComponents = [principalFilms]
        
    }
    
    func getComponent() -> [CustomComponentProtocol] {
        return listComponents
    }
    
}
