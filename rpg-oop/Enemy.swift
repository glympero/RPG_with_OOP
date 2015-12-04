//
//  Enemy.swift
//  rpg-oop
//
//  Created by Lympe on 03/12/15.
//  Copyright © 2015 Lympe. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String]{
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type : String{
        return "Grunt"
    }
    
    //Not sure if it's going to return something
    func dropLoot() -> String?{
        if !isAlive{
            
            //A random number from 0 and the length of the loot array
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }else{
            return nil
        }
    }

}
