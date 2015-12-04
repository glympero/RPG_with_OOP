//
//  ViewController.swift
//  rpg-oop
//
//  Created by Lympe on 03/12/15.
//  Copyright © 2015 Lympe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var playerHpLabel: UILabel!
    
    @IBOutlet weak var enemyHpLabel: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    var player: Player!
    var enemy: Enemy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Generate player
        player = Player(name: "George", hp: 110, attackPwr: 20)
        playerHpLabel.text = "\(player.hp) HP"
        //Generate player
        //var enemy = Enemy(hp: 100, attackPwr: 30)
        //var kimara = Kimara(hp: 120, attackPwr: 40)
        //var devilWizard = DevilWizard(hp: 60, attackPwr: 5)
        generateRndEnemy()
        enemyHpLabel.text = "\(enemy.hp) HP"
        
    }
    
    func generateRndEnemy(){
        let rand = Int(arc4random_uniform(2))
        switch rand
        {
            case 1: enemy = DevilWizard(hp: 80, attackPwr: 5)
            case 2: enemy = Kimara(hp: 150, attackPwr: 40)
            
            default: enemy = Kimara(hp: 150, attackPwr: 40)
        }
        
    }

    @IBAction func onChestTapped(sender: AnyObject) {
        
    }

}

