//
//  PresentViewController.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 01/09/23.
//

import UIKit

class PresentViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "teste"
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    
    
}
