//
//  Verkäufer.swift
//  buyYourCar
//
//  Created by Marcel Zimmermann on 23.01.23.
//

import Foundation

// kann man sehen wie in Android die Data Class

struct Verkäufer : Identifiable, Hashable{
    var id = UUID()
    var name: String
}
