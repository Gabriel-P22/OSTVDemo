//
//  HomeView.swift
//  TVOSDemo
//
//  Created by Gabriel Paschoal on 09/12/22.
//

import Foundation
import UIKit

class HomeView: UIView {

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .blue
        return tableView
    }()
    
    func render() {
        backgroundColor = .red
        addSubview(tableView)
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
