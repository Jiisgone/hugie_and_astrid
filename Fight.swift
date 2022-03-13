//
//  Fight.swift
//  Project
//
//  Created by Elmira Sarrafi on 2022-03-04.
//

class Fight {
    var hero:Hero
    var monster:Monster
    var turn:Bool = true  //Always Hero Starts The Fight
    var isFightOver:Bool = false
    init(_ hero:Hero, _ monster:Monster){
        self.hero = hero
        self.monster = monster
    }
    
    func applyDamage(_ from:GameCharacter, _ to:GameCharacter){
        to.takeDamage(amount: from.attack())
        turn.toggle()
    }
    func performTurn(_ action:Action){
        if(turn){
            switch action {
            case Action.attack:
                applyDamage(self.hero, self.monster)
            case Action.run:
                hero.runAway()
            case Action.sneak:
                hero.sneakPastObstacles()
            default:
                print("enter valid input")
            }
        }
        else{
            applyDamage(self.monster, self.hero)
        }
//        This function applies the specified action to the fight. As noted in the game description, Heros can attack,sneak, or run away. Enemies can attack. The possible actions should be modeled as an enum.
    }
}
