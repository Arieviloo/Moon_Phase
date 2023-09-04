//
//  PresentView.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 02/09/23.
//

import UIKit

class PresentView: UIView {
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var phaseImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleToFill
        return $0
    }(UIImageView())
    
    lazy var descriptionLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        addSubview(phaseImageView)
        addSubview(descriptionLabel)
        configConstraints()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            
            phaseImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            phaseImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            phaseImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            phaseImageView.heightAnchor.constraint(equalToConstant: 300),
            
            descriptionLabel.topAnchor.constraint(equalTo: phaseImageView.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: phaseImageView.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: phaseImageView.trailingAnchor)
            
        ])
    }
}
