//
//  Autohaus.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import Foundation

// Datenklasse Autohaus wie in Android vergleichbar

struct Autohaus : Identifiable, Hashable{
    var id = UUID()
    var name: String
    var workerList : [Verkäufer]
}
