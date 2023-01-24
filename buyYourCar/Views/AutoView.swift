//
//  AutoView.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 24.01.23.
//

import SwiftUI

struct AutoView: View {
    
    
    // Anbindung des navPathes mithilfe der BindingMethode
    @Binding var navPath : NavigationPath
    
   
    
    // Variable autohaus vom Typ Autohaus
    var autoIndex : Int
    
    
    
    // Anschliessen des ViewModels an die View
    @EnvironmentObject var viewModel: AutoHausViewModel
    
    var body: some View {
        NavigationView {
            // nach dem wort desination kann ich eine view angeben
            List {
                Text("hello world")
                NavigationLink("Go to details", destination: Text("new Details"))
            }
            .navigationBarTitle(Text("NavTitle"))
            
            
        }
    }
}
