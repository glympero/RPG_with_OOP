//
//  Player.swift
//  rpg-oop
//
//  Created by Lympe on 03/12/15.
//  Copyright © 2015 Lympe. All rights reserved.
//

import Foundation

class Player: Character{
    private var _name: String = "Player"
    
    var name: String{
        return _name
    }
    
    private var _inventory =  [String]()
    
    var inventory: [String]{
        return _inventory
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        //Calls initialiser from Character and pass the hp and attackPwr from this initialiser
        self.init(hp: hp, attackPwr: attackPwr)
        self._name = name
    }
}
