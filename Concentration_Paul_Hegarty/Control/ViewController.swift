//
//  ViewController.swift
//  Concentration_Paul_Hegarty
//
//  Created by Bruce Wang on 4/4/20.
//  Copyright © 2020 Bruce Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)
    
    var numberOfPairsOfCards: Int{
        return (cardButtons.count+1)/2
    }
    
    
    private var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flip Count: \(flipCount)"
        }
    }
    
    @IBOutlet private weak var flipCountLabel: UILabel!
    @IBOutlet private var cardButtons: [RoundCornerButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender as! RoundCornerButton){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
        
    }
    
    
    func updateViewFromModel() {
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp{
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = UIColor.white
            }else{
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? .clear: .orange
            }
        }
    }
    
    private var emojiChoices = ["🤖","👻","💀","🧠", "👄", "💄", "🏀", "🥎", "🏓", "🍭", "🌰"]
    private var emoji =  [Int:String]()
    
    private func emoji(for card: Card) -> String {
        
        if emoji[card.identifier] == nil, emojiChoices.count > 0{
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            
        }
        
        return emoji[card.identifier] ?? "?"
    }
    
}



