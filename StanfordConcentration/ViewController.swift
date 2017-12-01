//
//  ViewController.swift
//  StanfordConcentration
//
//  Created by Fernando Degirmentjis on 1/12/17.
//  Copyright © 2017 Fernando Degirmentjis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!
    
    let emojis = ["👻", "☠️"]
    
    @IBAction func toggleCard(_ sender: UIButton) {
        
        if sender.currentTitle == "" {
            sender.setTitle(emojiFor(button: sender), for: UIControlState.normal)
        } else {
            sender.setTitle("", for: UIControlState.normal)
        }
    }
    
    func emojiFor(button: UIButton) -> String {
        return emojis[cardButtons.index(of: button)!]
    }
    
}

