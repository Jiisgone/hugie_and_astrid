//
//  Hero.swift
//  Project
//
//  Created by Elmira Sarrafi on 2022-03-09.
//

class Hero: GameCharacter {
    
    var weaponStrength:Int
    override init(_ name: String) {
        self.weaponStrength = Int.random(in: 5...20)
        super.init(name)
    }
    override func attack()-> Int {
        return weaponStrength
    }
    func sneakPastObstacles() {
        
    }
    func runAway() {
        
    }
}
