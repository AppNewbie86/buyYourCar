//
//  SoldCarView.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 24.01.23.
//

import SwiftUI

struct SoldCarView: View {
    
    // Wenn sich wert ändert , ändert sich auch die Variable
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var autoMarke: String = ""
    @State var modell: String = ""
    @State var bauJahr: String = ""
    @State var kraftStoff: String = ""
    @State var alter: String = ""
    @State var preisVorstellung: String = ""

    
    
    var body: some View {
        ZStack {
            
            Image("pete")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
                
            VStack{
                
                
                Text("Füllen Sie alle Felder aus")
                    .font(.system(size:33)) // macht text kleiner
                    .foregroundColor(Color.black)
                
               
                    
                    
                
                Form {
                    List {
                    Section{
                        TextField("firstName", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            //.padding()// wenn das padding keinen wert hat nimmt ios seinen standartwert und setzt einen border und ein padding
                        TextField("lastName", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Modell", text: $modell)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Automarke", text: $autoMarke)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Baujahr", text: $bauJahr)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Kraftstoff", text: $kraftStoff)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Alter", text: $alter)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Preisvorstellung", text: $preisVorstellung)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                     
                     }
                 }
                .padding()
                
             }
                HStack{
                    Button(action:{
                        
                    }){
                        Text("Cancel")
                    }
                    .foregroundColor(Color.white) // ändert SchriftFarbe
                    .padding() // macht einen Abstand vom Button zur Schrift
                    .background(Color.blue) // HintergrundFarbe des Buttons auf Blau
                    .cornerRadius(25) // macht ein eckenradius um den Button
                    .opacity(0.6)

                    Button(action:{
                        
                    }){
                        Image(systemName: "clock")
                        Text("Save Data")
                    }
                    .foregroundColor(Color.white) // ändert SchriftFarbe
                    .padding() // macht einen Abstand vom Button zur Schrift
                    .background(Color.blue) // HintergrundFarbe des Buttons auf Blau
                    .cornerRadius(25) // macht ein eckenradius um den Button
                    .opacity(0.6)
                }
            }
        }
    }
    
    struct SoldCarView_Previews: PreviewProvider {
        static var previews: some View {
            SoldCarView()
        }
    }
}
