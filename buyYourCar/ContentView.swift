//
//  ContentView.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 22.01.23.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var viewModel = AutoHausViewModel()
    
    // State Variable autohäuser damit wir ihren Wert behalten
    
    @State var navPath = NavigationPath()
    
    // Body wo alles reinkommt was an der View angezeigt werden soll
    
    var body: some View {
        
            
            ZStack {
                
                Image("pete")
                    .resizable()
                    
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.9)
                    .overlay(alignment:
                            .bottomTrailing, content: { // toptrailing setzt es an den oberen Rand
                            })
                
                
                
                VStack{
                    NavigationStack(path: $navPath) {
                        List(viewModel.autohausList) { autohaus in
                            NavigationLink(autohaus.name, value: autohaus)
                            
                        }// Wenn der übergebene Datentyp / value vom Typ Autohaus ist dann führe das aus
                        .navigationDestination(for: Autohaus.self){ autohaus in
                            AutohausView(navPath: $navPath, autohausIndex:
                                            viewModel.getAutohausIndex(autohaus:autohaus))
                        }
                        // umliegendes / naheliegendes ViewModel überwacht den navpath und deren Counter
                        // und zeigt ihn an (welche Page gerade angezeigt wird)
                    }.environmentObject(viewModel)
                    Text("Page : \(navPath.count)")
                        .foregroundColor(Color.white)
                }
            }
        }
    }

        // Dient zur Vorschau
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                // und rufen dann das TextElement an
                ContentView()
            }
        }
        
    
    

