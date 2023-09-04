//
//  PresentViewController.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 01/09/23.
//

import UIKit

class PresentViewController: UIViewController {

    private var presentView: PresentView? = PresentView()
    
//    override func loadView() {
//        presentView = PresentView()
//        view = presentView
//    }
    
    override func viewDidLoad() {
        view = presentView
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
    
    public func configPresentView(data: PhaseMoon) {
        guard let presentView else { return }
        
        presentView.titleLabel.text = data.phaseName
        presentView.phaseImageView.image = UIImage(named: data.imageName)
        presentView.descriptionLabel.text = data.description
       
    }
    
}
