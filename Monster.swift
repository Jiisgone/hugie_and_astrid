//
//  Monster.swift
//  Project
//
//  Created by Elmira Sarrafi on 2022-03-09.
//


class Monster: GameCharacter {
    
    var attackPower:Int

    override init(_ name: String) {
        attackPower = Int.random(in: 5...20)
        super.init(name)
    }
    override func attack() -> Int {
        return attackPower
    }
    
}
