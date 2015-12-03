//
//  Kimara.swift
//  rpg-oop
//
//  Created by Lympe on 03/12/15.
//  Copyright © 2015 Lympe. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Tough Hide", "Chimara Venom", "Rare Trident"]
    }
    
    override var type: String{
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX{
            //Use the function from inherited class in order not to have the same function twice
            return super.attemptAttack(attackPwr)
        }else{
            self.hp++
            return false
        }
    }
}
