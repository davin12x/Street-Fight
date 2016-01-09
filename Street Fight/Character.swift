//
//  Character.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class Character{

    var _healthPoint :Int = 100
    var _attackPower: Int = 10
    
    var healthPoint:Int{
        get{
            return _healthPoint
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
    init(startingHealthPoint:Int,startingAttackPower: Int)
    {
        self._healthPoint = startingHealthPoint
        self._attackPower = startingAttackPower
    }
    func attemptAttack(attackPower:Int)->Bool{
        self._healthPoint -= attackPower
        return true
    }
    
}
