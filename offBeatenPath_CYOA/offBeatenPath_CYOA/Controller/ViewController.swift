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
        
        storyText.text = example.title
        choice1Title.setTitle(example.choice1, for: .normal)
        choice2Title.setTitle(example.choice2, for: .normal)
    }

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Title: UIButton!
    @IBOutlet weak var choice2Title: UIButton!
    
    @IBAction func choicePressed(_ sender: Any) {
        print("Hello World!")
    }

    let example = Story(title: "Alright, it’s time for an adventure! Well, on a typical walking path to get some good exercise in. You’re at the beginning and there’s 2 ways to go. Take your pick!", choice1: "North", choice2: "South")
    
}


