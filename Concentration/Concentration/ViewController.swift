//
//  ViewController.swift
//  Concentration
//
//  Created by Mark Kangwantas on 1/16/19.
//  Copyright © 2019 TMKang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
        let cardNumber = cardButtons.index(of: sender)
        print("cardNumber: \(cardNumber)")
    }
    
    func flipCard (withEmoji emoji : String, on button: UIButton) {
        print("flipCard withEmoji: \(emoji)")
        if (button.currentTitle == emoji) {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

