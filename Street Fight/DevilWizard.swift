//
//  DevilWizard.swift
//  Street Fight
//
//  Created by Lalit on 2016-01-09.
//  Copyright © 2016 Bagga. All rights reserved.
//

import Foundation

class DevilWizard: Enemy{

    override var loot : [String]{
        return ["Magic Wand","Diamonds","SantaPowers"]
    
    }
    override var type : String{
        return "Devil Wizard"
    }
}
