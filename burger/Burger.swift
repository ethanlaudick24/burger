//
//  Burger.swift
//  burger
//
//  Created by ETHAN LAUDICK on 10/24/22.
//

import Foundation

public class Burger {
    
    static var burgersCreated = 0
    var created = 0
    
    var cheese: Bool
    var lettuce: Bool
    var tomato: Bool
    var pickels: Bool
    
    var extraCheese = false
    var extraLettuce = false
    var extraTomato = false
    var extraPickels = false
    
    var rarityCase: rarity
    
    enum rarity{
        case rare, mediumRare, medium, mediumWell, wellDone
    }
    
    init(cheese: Bool, lettuce: Bool, tomato: Bool, pickels: Bool) {
        self.cheese = cheese
        self.lettuce = lettuce
        self.tomato = tomato
        self.pickels = pickels
        rarityCase = .wellDone
        Burger.burgersCreated += 1
        created = Burger.burgersCreated
    }
    
    func toString()-> String {
        var toReturn = "Burger \(created): \(rarityCase)"
        
        if(extraCheese){
            toReturn = toReturn + ", Extra Cheese"
        } else if(cheese){
            toReturn = toReturn + ", Cheese"
        }
        
        if(extraTomato){
            toReturn = toReturn + ", Extra Tomato"
        } else if(tomato){
            toReturn = toReturn + ", Tomato"
        }
        
        if(extraLettuce){
            toReturn = toReturn + ", Extra Lettuce"
        } else if(lettuce){
            toReturn = toReturn + ", Lettuce"
        }
        
        if(extraPickels){
            toReturn = toReturn + ", Extra Pickles"
        } else if(pickels){
            toReturn = toReturn + ", Pickles"
        }
        
        return toReturn
    }
    
    
}
