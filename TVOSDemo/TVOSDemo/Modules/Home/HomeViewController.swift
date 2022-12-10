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
    
    var viewModel: HomeViewModelProtocol?
    
    init(viewModel: HomeViewModelProtocol?) {
        self.viewModel = viewModel
        viewModel?.setupComponent()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = customView
        customView.render()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.listComponents.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let components: CustomComponentProtocol = viewModel?.listComponents[indexPath.row] else { return UITableViewCell() }
        
        switch components.type {
        case .principalFilms:
            guard let cell = components as? PrincipalFilmsCarrousel else { return UITableViewCell() }
            return cell
        default:
            return UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
            return true
        }
    }
}
