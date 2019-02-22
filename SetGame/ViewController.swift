//
//  ViewController.swift
//  SetGame
//
//  Created by 无敌帅的yyyyy on 2019/2/22.
//  Copyright © 2019年 无敌帅的yyyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for index in buttons.indices{
            let card = game.cards[index]
            let numbershape = card.numberShape ?? ("circle",0)
            let color = card.color ?? "white"
            initButton(button: buttons[index], color: color, numbershape: numbershape)
        }
    }
    
    lazy var game = GameBrain(numberofCards: buttons.count)
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var touchNumber: UILabel!
    var touchnumber = 0{
        didSet{
            touchNumber.text = "touch:\(touchnumber)"
        }
    }
    
    
    @IBAction func ChooseCard(_ sender: UIButton) {
        touchnumber = (touchnumber+1)%2
        let index = buttons.index(of:sender)
        chooseCard(at: index!)
        
    }
    var oneOnlyCard:Card?
    
    
    private func chooseCard(at index:Int){
        switch touchnumber{
        case 0:oneOnlyCard = game.cards[index]
        case 1:CheckifMatch(at:index)
        default:break
        }
        
    }
    private func CheckifMatch(at index:Int){
        var isMatch = false
        if oneOnlyCard?.color == game.cards[index].color,(oneOnlyCard?.numberShape)! == game.cards[index].numberShape!{
            isMatch = true
        }
        if isMatch{
            
        }
        
    }
    
    
    
    @IBAction func AddCard(_ sender: UIButton) {
    }
    
   
    @IBOutlet weak var ScoreLabel: UILabel!{
        didSet{
            ScoreLabel.text = "score:0"
        }
    }
    
    private func initButton(button:UIButton,color:String,numbershape:(shape:String,number:Int)){
        button.setTitle("", for: .normal)
        switch color{
        case "red":button.backgroundColor = UIColor.red
        case "yellow":button.backgroundColor = UIColor.yellow
        case "blue":button.backgroundColor = UIColor.blue
        default:break
        }
        var shape = "●"
        switch numbershape.shape{
        case "circlr":shape = "●"
        case "rectangle":shape = "■"
        case "triangle":shape = "▲"
        default:break
        }
        for _ in 0..<numbershape.number{
            button.setTitle(button.currentTitle!+shape, for: .normal)
        }
        
    }
    


}

