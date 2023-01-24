//
//  WorkerDetailsView.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import SwiftUI


struct WorkerDetailsView: View {
    
   
    
    var body: some View {
        List{
            TabView {
                
                Image("kia")
                
                    .tabItem({
                        Text("Erster")
                    })
                    .tag(0)
                Image("opel")
                
                    .tabItem({
                        Text("Zweiter")
                    })
                    .tag(1)
                
            }
            Text("Autohändler des Monats")
                .bold()
            
            Text("Heinrich Materhorn")
            Text("Sein Alter")
                .bold()

            Text("Ganze 39")
            
            Text("Verkaufshistory")
                .bold()


            Text("verkaufte Autos 9 davon 5 Trabis")

        }
    }
}
