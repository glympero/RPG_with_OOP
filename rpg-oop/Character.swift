//
//  Character.swift
//  rpg-oop
//
//  Created by Lympe on 03/12/15.
//  Copyright © 2015 Lympe. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr: Int{
        return _attackPwr
//        get{
//            return _attackPwr
//        }
    }
    
    var hp: Int{
        get{
            return _hp
        }
        set{
            _hp = hp
        }
    }
    
    //computed property (char.isAlive)
    var isAlive: Bool{
        get{
            if _hp <= 0 {
                return true
            }else{
                return false
            }
        }
    }
    
    init(hp: Int, attackPwr: Int){
        self._hp = hp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    
    
}