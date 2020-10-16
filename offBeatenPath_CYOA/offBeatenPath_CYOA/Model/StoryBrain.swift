//
//  StoryBrain.swift
//  offBeatenPath_CYOA
//
//  Created by Freed, Margo on 10/16/20.
//

import Foundation

struct StoryBrain {
    var storyNumber: Int = 0
    
    let stories = [
        Story(
            title: "Alright, it’s time for an adventure! Well, on a typical walking path to get some good exercise in. You’re at the beginning and there’s 2 ways to go. Take your pick!",
            choice1: "North", choice2: "South",
            storyDestination1: 1, storyDestination2: 2
        ),
        Story(
            title: "Onward! It’s mostly woods on the way, but after about 10 minutes of walking, you spot a friendly cat along the way. He begins to follow you. You...",
            choice1: "Let him follow", choice2: "Shoo him away",
            storyDestination1: 0, storyDestination2: 0
        ),
        Story(
            title: "After about 15 minutes you begin to feel hungry. Of course you forgot to eat before your walk. Maybe there’s some berries in the woods off the path? You...",
            choice1: "Stray from Path", choice2: "Keep Walking",
            storyDestination1: 0, storyDestination2: 0)
    ]
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == stories[storyNumber].c1 {
            storyNumber = stories[storyNumber].s1
        } else if userChoice == stories[storyNumber].c2 {
            storyNumber = stories[storyNumber].s2
        }
    }
    
    func getStoryTitle() -> String {
        return stories[storyNumber].t
    }

    func getChoice1() -> String {
        return stories[storyNumber].c1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].c2
    }
}
