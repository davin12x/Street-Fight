//
//  Player.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    var name : String{
        get {
            return _name
        }
    }
    private var _inventory = [String]()
    
    var inventory : [String]{
        return _inventory
    }
    
    func addItemToInventory(item : String ){
        _inventory.append(item)
    
    }
    
    
    convenience init(name : String, hp : Int, attackPower : Int) {
        
        self.init(startingHealthPoint: hp, AttackPower : 15)
       
        _name = name
    }
    
}
