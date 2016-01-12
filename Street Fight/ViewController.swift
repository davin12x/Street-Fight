//
//  ViewController.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var playerHpLabel: UILabel!
    
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player : Player!
    var enemy : Enemy!
    var chestMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(name: "Osama", hp: 30, attackPower: 60)
        playerHpLabel.text = "\(player.healthPoint) HP"
    }
    
    
    @IBAction func onAttackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPower) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHpLabel.text = "\(enemy.healthPoint) HP"
        } else {
            printLabel.text = "Attack was unsuccessful!"
        }
        
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    func generateRandomEnemy(){
       let rand = Int(arc4random_uniform(2))
        if rand == 0{
            enemy = Loki(startingHealthPoint:50,AttackPower: 12)
        }
        else{
            enemy = DevilWizard(startingHealthPoint:60,AttackPower: 15)
        }
        enemyImage.hidden = false
        
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

