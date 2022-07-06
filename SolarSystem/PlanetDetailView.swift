//
//  PlanetDetailView.swift
//  SolarSystem
//
//  Created by Yuliya  on 7/6/22.
//

import SwiftUI

struct PlanetDetailView: View {
    @Binding var planet: Planet
    
    var body: some View {
        ZStack {
            Image("galaxy")
                .resizable()
                
            VStack(alignment: .leading, spacing: 20) {
                Text(planet.planetName)
                    .font(.title)
                    .fontWeight(.bold)
                Image(planet.imageName)
                Text("Maximum Distance From Sun: \(String(format: "%.2f", planet.millionKMsFromSun))")
                Text("Day length in Earth Days: \(String(format: "%.2f", planet.dayLength))")
                Text("Planet Diameter: \(planet.diameter) km")
            
            }

        }
        .preferredColorScheme(.dark)
     
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailView(planet: .constant(Planet(planetName: "Earth", imageName: "earth", diameter: 10, dayLength: 10, millionKMsFromSun: 10, orderNumber: 10) )
        )
        .preferredColorScheme(.dark)
    }
}
