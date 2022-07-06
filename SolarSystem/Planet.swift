//
//  Planet.swift
//  SolarSystem
//
//  Created by Yuliya  on 7/6/22.
//

import Foundation

class Planet: Identifiable {
    
    var planetName: String = ""
    var imageName: String
    var diameter: Int
    var dayLength: Double
    var millionKMsFromSun: Double
    var orderNumber: Int
    
    init(
        planetName: String, imageName: String, diameter: Int, dayLength: Double, millionKMsFromSun: Double,
        orderNumber: Int
    ) {
        self.planetName = planetName
        self.imageName = imageName
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        self.orderNumber = orderNumber
    }
}
