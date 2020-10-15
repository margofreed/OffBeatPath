//
//  ViewController.swift
//  offBeatenPath_CYOA
//
//  Created by Freed, Margo on 10/15/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyText.text = stories[0].title
        choice1Title.setTitle(stories[0].choice1, for: .normal)
        choice2Title.setTitle(stories[0].choice2, for: .normal)
    }

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Title: UIButton!
    @IBOutlet weak var choice2Title: UIButton!
    
    @IBAction func choicePressed(_ sender: Any) {
        print("Hello World!")
        
    }

    
    let stories = [
        Story(title: "Alright, it’s time for an adventure! Well, on a typical walking path to get some good exercise in. You’re at the beginning and there’s 2 ways to go. Take your pick!", choice1: "North", choice2: "South"),
        Story(title: "Onward! It’s mostly woods on the way, but after about 10 minutes of walking, you spot a friendly cat along the way. He begins to follow you. You...", choice1: "Let him follow", choice2: "Shoo him away"),
        Story(title: "After about 15 minutes you begin to feel hungry. Of course you forgot to eat before your walk. Maybe there’s some berries in the woods off the path? You...", choice1: "Stray from Path", choice2: "Keep Walking")
    ]
}


