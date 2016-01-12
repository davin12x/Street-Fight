//
//  Character.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class Character{

   private var _hp :Int = 100
    private var _attackPower: Int = 10
    
    var healthPoint:Int{
        get{
            return _hp
        }
        
    }
    var attackPower: Int{
        get{
            return _attackPower
        }
    }
    var isAlive :Bool{
        get{
            if healthPoint <= 0{
                return false
            }
            else{
            return true
            }
        }
    }
    init(startingHealthPoint:Int,AttackPower: Int)
    {
        self._hp = startingHealthPoint
        self._attackPower = AttackPower
    }
    
    func attemptAttack(attackPower: Int)->Bool{
        self._hp -= attackPower
        
        return true
    }
    
}
