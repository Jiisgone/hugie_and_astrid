//
//  GameCharacter.swift
//  Project
//
//  Created by Elmira Sarrafi on 2022-03-09.
//

class GameCharacter {
    var name:String
    var maximumNumberOfHealthPoints:Int
    var amountOfDamage:Int?
    init(_ name:String){
        self.name = name
        self.maximumNumberOfHealthPoints = Int.random(in: 20...100)
    }
    
    func takeDamage(amount:Int){
      self.maximumNumberOfHealthPoints = self.maximumNumberOfHealthPoints - amount
    }
    func attack() -> Int {
      return amountOfDamage!
    }
    
}
