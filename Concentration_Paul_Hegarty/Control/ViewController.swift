//
//  ViewController.swift
//  Concentration_Paul_Hegarty
//
//  Created by Bruce Wang on 4/4/20.
//  Copyright © 2020 Bruce Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flip Count: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    let emoji = "🤖"

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: emoji, on: sender)
        
        
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.orange
        }else{
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor.white
        }
    }
    
}

