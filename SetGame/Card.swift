//
//  Card.swift
//  SetGame
//
//  Created by 无敌帅的yyyyy on 2019/2/22.
//  Copyright © 2019年 无敌帅的yyyy. All rights reserved.
//

import Foundation
struct Card{
    var color:String?
    var numberShape:(shape:String,number:Int)?
    
    
    
    init(color:String,numberShape:(String,Int)){
        self.color = color
        self.numberShape = numberShape
    }
    
    
    
    
}
