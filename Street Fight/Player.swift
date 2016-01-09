//
//  Player.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class Player: Character{
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
    convenience init(name : String, healthPoint : Int, attackPower : Int){
        self.init(startingHealthPoint:healthPoint,startingAttackPower: attackPower)
        _name = name
    }
    
}
