//
//  Beer.swift
//  BeerBar
//
//  Created by admin on 24.05.22.
//

import Foundation

class Beer{
    var beerType: String
    var beerName: String
    var beerDensity: String
    var beerAlcogol: String
    var beerVolume: String
    var beerCountry: String
    var beerOst: String
    var beerCost: String
    
    init(beerType: String, beerName: String, beerDensity: String, beerAlcogol: String,
         beerVolume: String, beerCountry: String, beerOst: String, beerCost: String) {
        self.beerType = beerType
        self.beerName = beerName
        self.beerDensity = beerDensity
        self.beerAlcogol = beerAlcogol
        self.beerVolume = beerVolume
        self.beerCountry = beerCountry
        self.beerOst = beerOst
        self.beerCost = beerCost
    
    }
}
