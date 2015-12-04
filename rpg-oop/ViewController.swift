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
    
    @IBOutlet weak var attackBtn: UIButton!
    
    var player: Player!
    
    var enemy: Enemy!
    
    var chestMsg: String?
    
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
        printLabel.text = "\(player.name) is ready to attack!"
        
    }
    
    func generateRndEnemy(){
        let rand = Int(arc4random_uniform(2))
        switch rand
        {
            case 1: enemy = DevilWizard(hp: 80, attackPwr: 5)
            case 2: enemy = Kimara(hp: 150, attackPwr: 40)
            
            default: enemy = Kimara(hp: 150, attackPwr: 40)
        }
        enemyImg.hidden = false
        attackBtn.hidden = false
        enemyHpLabel.text = "\(enemy.hp) HP"
        printLabel.text = "\(player.name) is ready to attack!"
        
    }

    @IBAction func onChestTapped(sender: AnyObject) {
        
        printLabel.text = chestMsg
        
        chestBtn.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRndEnemy", userInfo: nil, repeats: false)
       
        
    }
    
    
    @IBAction func onAttackPressed(sender: AnyObject) {
//        enemy.attemptAttack(player.attackPwr)
//        if enemy.hp <= 0 {
//            enemyImg.hidden = true
//            chestBtn.hidden = false
//            enemyHpLabel.text = "0 HP"
//            attackBtn.hidden = true
//            printLabel.text = "Open chest to get loot!"
//            
//        }else{
//            printLabel.text = "\(player.name) attacks!"
//            enemyHpLabel.text = "\(enemy.hp) HP"
//        }
        
        if enemy.attemptAttack(player.attackPwr){
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLabel.text = "\(enemy.hp) HP"
        }else{
            printLabel.text = "Attacked was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot(){
            player.addItemToInventory(loot)
            chestMsg = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive{
            enemyImg.hidden = true
            enemyHpLabel.text = "0 HP"
            attackBtn.hidden = true
            printLabel.text = "Killed \(enemy.type)"
        }
    }
    

}

