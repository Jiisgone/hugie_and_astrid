//
//  Location.swift
//  Project
//
//  Created by Elmira Sarrafi on 2022-03-10.
//

class Location {
    var name:String
    var monster:Monster
    var isHeroHere:Bool = false
    var isAstridHere: Bool = false
    
    init(_ name:String, _ monster:Monster){
        self.name = name
        self.monster = monster
    }
}
