//
//  AutoHausViewModel.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import Foundation

@MainActor class AutoHausViewModel : ObservableObject {
    
    // Wir haben eine Variable autohausList vom Typ Autohaus mit einem leeren Array
    
    @Published var autohausList : [Autohaus] = []
    
    init(){
        
        // Erstellen der Mitarbeiter für das Autohaus Bauer
        
        // - w3 vom Typ Verkäufer mit dem Namen Heinrich
        // - w4 vom Typ Verkäufer mit dem Namen Peter
        
        var w3 = Verkäufer(name: "Heinrich")
        var w4 = Verkäufer(name: "Peter")
        
        // Erstellen des Autohauses Bauer mit einem Array aus w3,w4.... 2 Mitarbeiter
        
        var autohaus1 = Autohaus(name: "Autohaus Bauer", workerList: [w3,w4])
        
        //---------------------------------------
        
        // Erstellung des 2 Autohauses Name Müller und deren Mitarbeiter
        
        var w5 = Verkäufer(name: "Max")
        var w6 = Verkäufer(name: "Till")
        
        var autohaus2 = Autohaus(name: "Autohaus Müller", workerList: [w5,w6])
        
        
        autohausList = [autohaus1,autohaus2]
    }
    
    func getAutohausIndex (autohaus:Autohaus) -> Int{
        for index in autohausList.indices {
            if(autohausList[index].id == autohaus.id){
                return index
            }
            
        }
        return 0
        
    }
    
    func addNewAutohausMitarbeiter(autohausIndex : Int, name : String){
        var newVerkäufer = Verkäufer (name: name)
        autohausList[autohausIndex].workerList.append(newVerkäufer)
    }
   
}
