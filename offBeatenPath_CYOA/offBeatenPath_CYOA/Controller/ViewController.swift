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
        
        storyText.text = "Alright, it’s time for an adventure! Well, on a typical walking path to get some good exercise in. You’re at the beginning and there’s 2 ways to go. Take your pick!"
        choice1Title.setTitle("North", for: .normal)
        choice2Title.setTitle("South", for: .normal)
    }

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Title: UIButton!
    @IBOutlet weak var choice2Title: UIButton!
    
    @IBAction func choicePressed(_ sender: Any) {
        print("Hello World!")
    }
    
}

