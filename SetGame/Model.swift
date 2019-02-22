//
//  Model.swift
//  SetGame
//
//  Created by 无敌帅的yyyyy on 2019/2/22.
//  Copyright © 2019年 无敌帅的yyyy. All rights reserved.
//

import Foundation
class GameBrain{
    var cards = [Card]()
    var colors = ["yellow","blue","red"]
    var numbers = [1,2,3]
    var shapes = ["rectangle","circle","triangle"]
    
    init(numberofCards:Int){
        for _ in 0..<numberofCards{
            let card = Card(color:colors[3.randomNumber],numberShape:(shapes[3.randomNumber],numbers[3.randomNumber]))
        cards += [card]
        }
    }
    
    
    
    
}







extension Int{
    var randomNumber:Int{
        return Int(arc4random_uniform(UInt32(self)))
    }
}
