//
//  HomeViewCell.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 31/08/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeViewCell"
    
    lazy var phaseNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var moonImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.secundaryColor
        contentView.addSubview(phaseNameLabel)
        contentView.addSubview(moonImage)
        configConstraints()
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
          
            
            moonImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            moonImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            moonImage.heightAnchor.constraint(equalToConstant: 100),
            moonImage.widthAnchor.constraint(equalToConstant: 100),
            
            phaseNameLabel.centerYAnchor.constraint(equalTo: moonImage.centerYAnchor),
            phaseNameLabel.leadingAnchor.constraint(equalTo: moonImage.trailingAnchor, constant: 20)
        ])
    }
}
