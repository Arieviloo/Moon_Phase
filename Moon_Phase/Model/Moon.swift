//
//  Moon.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 31/08/23.
//

import Foundation

struct Moon {
    let phaseName: String
    let imageName: String
}


struct MoonList: Codable {
    let moon: [PhaseMoon]
}

struct PhaseMoon: Codable {
    let phaseName: String
    let iconName: String
    let imageName: String
    let description: String
}

