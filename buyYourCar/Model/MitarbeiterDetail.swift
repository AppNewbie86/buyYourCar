//
//  MitarbeiterDetail.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import Foundation

// Datenklasse MitarbeiterDetail wie in Android vergleichbar


struct MitarbeiterDetail: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var soldCars: Int
    var age: Int
    var detailList : [Verkäufer]
}

