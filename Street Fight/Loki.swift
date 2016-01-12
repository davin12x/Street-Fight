//
//  Loki.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class Loki: Enemy{
    
    let IMMUNE_Max = 15
    
    override var loot: [String] {
        return ["Gold","Shield","Crown"]
    }
    
    override var type : String{
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_Max{
          return super.attemptAttack(attackPower)
            
        }else{
            return false
        }
    }
    
}