//
//  Auto.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import Foundation

// Datenklasse Auto wie in Android vergleichbar


struct Auto : Identifiable, Hashable{
    var id = UUID()
    var name: String
    
    var autoList : [Auto]

}
