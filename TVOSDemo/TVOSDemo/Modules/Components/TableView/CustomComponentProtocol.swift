//
//  CustomComponentProtocol.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation

protocol CustomComponentProtocol {
    var type: ComponentType? { get set }
}

public enum ComponentType: CaseIterable {
    case principalFilms
}
