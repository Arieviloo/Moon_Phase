//
//  ViewController.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 31/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var homeView: HomeView?
    
    let data: [Moon] = [
        Moon(phaseName: "Lua Nova", imageName: "new-moon"),
        Moon(phaseName: "Lua Cheia", imageName: "full-moon"),
    ]
    
    override func loadView() {
        homeView = HomeView()
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.primaryColor
        title = "Moon Phase"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        homeView?.protocolsTableView(delegate: self, dataSource: self)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        homeView?.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

