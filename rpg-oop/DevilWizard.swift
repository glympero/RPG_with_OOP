//
//  DevilWizard.swift
//  rpg-oop
//
//  Created by Lympe on 03/12/15.
//  Copyright © 2015 Lympe. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String]{
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String{
        return "Devil Wizard"
    }
}