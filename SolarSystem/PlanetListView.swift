//
//  PlanetListView.swift
//  SolarSystem
//
//  Created by Yuliya  on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    
    init() {
      UITableView.appearance().backgroundColor = .clear
    }

    var body: some View {
        
        NavigationView {
            ZStack {
                Image("galaxy")
                    .resizable()
                    .frame(maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                  //  .frame(height: 500)
                    .blur(radius: 10)

                
                List(PlanetDataStore.planets) { planet in
                    
                    NavigationLink {
                        PlanetDetailView(planet: .constant(planet))
                    } label: {
                        HStack {
                            Image(planet.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50, alignment: .leading)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                Text(planet.planetName)

                                Text("\(planet.orderNumber)")
                            }
                        }
                        .padding(8)
                    }
                    .navigationTitle("Solar System")
                    .listRowBackground(Color.clear)
                    .preferredColorScheme(.dark)
                }
            }
            
        }
    }
}

    //        .listStyle(.plain)
    //        .toolbar{
//            ToolbarItem(placement: .navigationBarTrailing) {
//                NavigationLink{
//                    PlanetDetailView()
//                } label: {
//                    Image(systemName: "plus")
//                }
//            }
//        }
//
//
//    }
//}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}

