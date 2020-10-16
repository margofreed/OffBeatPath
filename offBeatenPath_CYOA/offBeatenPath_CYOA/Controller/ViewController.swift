//
//  ViewController.swift
//  offBeatenPath_CYOA
//
//  Created by Freed, Margo on 10/15/20.
//

import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
    }

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Title: UIButton!
    @IBOutlet weak var choice2Title: UIButton!
    
    @IBAction func choicePressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        getStoryTitle()
        getChoice1()
        getChoice2()
    }
    
    func getStoryTitle() {
        storyText.text = storyBrain.getStoryTitle()
    }
    
    func getChoice1() {
        choice1Title.setTitle(storyBrain.getChoice1(), for: .normal)
    }
    
    func getChoice2() {
        choice2Title.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}


