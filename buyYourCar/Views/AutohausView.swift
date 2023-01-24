//
//  AutohausView.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import SwiftUI

struct AutohausView: View {
    
    
    // hinzufügen einer alertvariablen
    @State private var presentAlert: Bool = false
    @State private var isPushed: Bool = false
    @State private var isPresented: Bool = false
    @State private var isSaved : Bool = false
    
    
    
    // Anbindung des navPathes mithilfe der BindingMethode
    @Binding var navPath : NavigationPath
    
    
    
    // Variable autohaus vom Typ Autohaus
    var autohausIndex : Int
    
    // State Variable mit neuem Autohaus Name vom Typ String und leeren Gänsefüsschen weil wir den Wert halten wollen (MERKEN)
    
    @State var newAutohausName : String = ""
    
    // Anschliessen des ViewModels an die View
    @EnvironmentObject var viewModel: AutoHausViewModel
    
    // unser Body wo alles reinkommt wo wir sehen sollen
    var body : some View {
        
        // Vertikaler Stabel mit dem Autohaus Name und eine Liste aus Mitarbeiter die in dem Autohaus arbeiten
        // Die Liste ist mit einer Schleife verknüpft die alle Verkäufer des Autohauses durchgeht und deren Namen anzeigt
        
        
        
        
        VStack{
            // Image wo resizable
            Image("autohasus")
                .resizable()
            Text(viewModel.autohausList[autohausIndex].name)
            List(viewModel.autohausList[autohausIndex].workerList){ verkäufer in
                NavigationLink(verkäufer.name, value: verkäufer)
                
                
            }
            
            Text("Wollen Sie ihr Auto verkaufen ?")
                .bold()
                .font(.system(size:24))
            Text("Dann geben Sie hier soviele Daten an wie es nur geht und wir machen ihnen einen Kostenvoranschlag!")
                .font(.system(size:15))
            
            
            Button("zur Eingabemaske"){
                isPresented = true
            }.padding()
                .foregroundColor(Color.blue)
            
            
            // Hochizontaler Stabel um UI Elemente nebeneinander anzuordnen
            HStack{
                // Textfield wo dem Nutzer ermöglicht einen neuen Mitarbeiter anzulegen und das mithilfe des BindingKonzeptes
                TextField(" neuer Mitarbeiter ", text: $newAutohausName)
                // Button mit Text Infos einholen
                Button(" Add"){
                    viewModel.addNewAutohausMitarbeiter(autohausIndex: autohausIndex, name: newAutohausName)
                }
                Button("Back"){
                    navPath.removeLast()
                }
            }
            .navigationBarBackButtonHidden(true)
            
            
            
            
        }
        // Klappbarer View typisch IOS Layout
        .sheet(isPresented: $isPresented){
            SoldCarView()
            
        }
        
    }
    
}
