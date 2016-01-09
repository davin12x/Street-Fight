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
    
    
    @IBAction func onChestTapped(sender: AnyObject) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(name: "Osama", healthPoint: 110, attackPower: 20)
        playerHpLabel.text = "\(player.healthPoint)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

