//
//  Enemy.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger","Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil
    }
    func test()->String?
    {
        return "testing"
    }
}
