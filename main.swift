//
//  main.swift
//  Project
//
//  Created by Elmira Sarrafi on 2022-03-04.
//


// 1. generate the map randomly
//      a list of location names
//      roads leading in to and out of
//      each location has a monster(the weapon power and health points will be generated randomly
// 2. place the hero randomly(toggle the isHeroHere flag for one of the random locations)
// 3. place astrid randomly(toggle the isAstridHere flag for one of the random locations)

let Hugie = Hero("Hugie")

print("What will you do?")
print(" 1. Search for Astrid\n 2. Rescue Astrid\n 3. Quit\n Enter choice:")

startTheGame()
func startTheGame(){
    switch starterMenu(){
    case 1:
        print("Searching for Astrid...")
    case 2:
        print("start journey")
    case 3:
        print("Goodbye!")
    default:
        print("nothing")
    }
}



func starterMenu()-> Int{
    var knownTheLocation: Bool = false
    if let option = Int((readLine() ?? nil)!){
        if(option == 1){
            knownTheLocation = true
            return option
        }
        else if((option == 2 || option == 3) && knownTheLocation == false){
            print("IF YOU DONT KNOW WHER ASTRID IS, YoU ShOuLd Search for Astrid first(hint: enter 1 :D)")
            return starterMenu()
        }
        else if((option == 2 || option == 3) && knownTheLocation){
            return option
        }
        else{
            print("Enter a valid input")
            return starterMenu()
        }
    }
    else{
        print("Enter a number between 1,2 and 3")
        return starterMenu()
    }
}



func battle(_ hero:Hero, _ monster:Monster){
    let fight = Fight(hero, monster)
    while(hero.maximumNumberOfHealthPoints>0 && monster.maximumNumberOfHealthPoints>0){
        print("\(hero.name)'s health points is: \(hero.maximumNumberOfHealthPoints)\n\(monster.name)'s health points is: \(monster.maximumNumberOfHealthPoints)")
        if(fight.turn){
            print("What will you do?\n1. Attack\n2. Sneak\n3. Give Up\nEnter choice:")
            if let option = Int((readLine() ?? nil)!){
                
            }
            
        }
    }
    
}
