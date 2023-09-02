//
//  ViewController.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 31/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var homeView: HomeView?
    private var presentVC = PresentViewController()
    
    private var service: DataMoon = DataMoon()
    
    let data: [Moon] = [
        Moon(phaseName: "Lua Nova", imageName: "new-moon"),
        Moon(phaseName: "Lua Crescente", imageName: "waxing-crescent-moon"),
        Moon(phaseName: "Lua Quarto Crescente", imageName: "first-quarter-moon"),
        Moon(phaseName: "Lua Crescente Gibosa", imageName: "waxing-gibbous-moon"),
        Moon(phaseName: "Lua Cheia", imageName: "full-moon"),
        Moon(phaseName: "Lua Minguante Gibosa", imageName: "waning-gibbous-moon"),
        Moon(phaseName: "Lua Quarto Minguante", imageName: "last-quarter-moon"),
        Moon(phaseName: "Lua Minguante", imageName: "waning-crescent-moon"),
    ]
    
    override func loadView() {
        homeView = HomeView()
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.primaryColor
        title = "Moon Phase"
        navigationController?.navigationBar.barTintColor = UIColor.primaryColor
        navigationController?.navigationBar.prefersLargeTitles = true
        
        homeView?.protocolsTableView(delegate: self, dataSource: self)
        
        service.getMoon{ result in
            switch result {
                case .success(let sucess):
                    print("deu bom")

                case .failure(let error):
                    print(error)
            }

        }
    
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell
        cell?.phaseNameLabel.text = data.compactMap({$0.phaseName})[indexPath.row]
        cell?.moonImage.image = UIImage(named: "\(data.compactMap({$0.imageName})[indexPath.row])")

        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        homeView?.tableView.deselectRow(at: indexPath, animated: true)
        presentVC.titleLabel.text = data.compactMap({$0.phaseName})[indexPath.row]
        present(presentVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
   
    
}

