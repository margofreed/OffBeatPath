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
        //0
        Story(
            title: "Alright, it’s time for an adventure! Well, on a typical walking path to get some good exercise in. You’re at the beginning and there’s 2 ways to go. Take your pick!",
            choice1: "North", choice2: "South",
            storyDestination1: 1, storyDestination2: 2),
        //1
        Story(
            title: "Onward! It’s mostly woods on the way, but after about 10 minutes of walking, you spot a friendly cat along the way. He begins to follow you. You...",
            choice1: "Let him follow", choice2: "Shoo him away",
            storyDestination1: 3, storyDestination2: 4),
        //2
        Story(
            title: "After about 15 minutes you begin to feel hungry. Of course you forgot to eat before your walk. Maybe there’s some berries in the woods off the path? You...",
            choice1: "Stray from Path", choice2: "Keep Walking",
            storyDestination1: 5, storyDestination2: 6),
        //3
        Story(title: "A minute or two passes and the cat meows which turns your attention to a small trail off to the right. Do you continue to follow the cat down the narrow path? ", choice1: "Yes", choice2: "No thanks", storyDestination1: 7, storyDestination2: 8),
        //4
        Story(title: "Once you reach the 1.5 mile marker, you contemplate whether you should turn around or keep going. If you head back you’ll have time for homework. Or do you want to push harder?", choice1: "Turn around", choice2: "Keep going for gains!", storyDestination1: 9, storyDestination2: 10),
        //5
        Story(title: "Upon encountering a bush of what looks to be elderberries, you see a hunter atop of a hill telling you he knows of a better place for food. You?", choice1: "Ignore him and eat", choice2: "Follow him", storyDestination1: 11, storyDestination2: 12),
        //6
        Story(title: "Around the first mile marker you start to regret your decision as the hunger hits harder. You’re 2 miles away from the start and there are a few fast food restaurants. Take your pick.", choice1: "Subway", choice2: "Taco Bell", storyDestination1: 13, storyDestination2: 14),
        //7
        Story(title: "You follow the cat down the pathway until you come across a magical slide that brings you into an alternate dimension. The cat grants you magical powers and the two of you go questing on every path walk.", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //8
        Story(title: "10 minutes pass and you feel bad for the stray cat. The 2nd mile marker has a gas station so you go inside, buy a can of tuna, then open it and feed to the cat on your walk back. Good deed for the day done! ", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //9
        Story(title: "Wow, nice job getting your workout in. It was uneventful, but that’s okay. You managed to get that 8-page essay done afterwards so definitely an accomplished day. ", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //10
        Story(title: "You get to mile marker 3 until you realize it’s almost getting dark out and you sprint back to the start. Once there, you’re dead tired so it’ll be harder to focus on homework in a shorter time frame.", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //11
        Story(title: "Ooops, those elderberries turned out to be hemlock. You’re lucky the hunter was around to call 911. Unfortunately you got your stomach pumped and a massive hospital bill.", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //12
        Story(title: "As shady as the whole thing sounded, he led you to a McDonald’s that happened to be on the top of the hill. You and the hunter became pals and decided to meet at the trail every week.", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //13
        Story(title: "Nice choice since you’re working out. Not to mention a footlong sub can last for 2 meals. You eat half and walk back to the start of the trail without feeling any regret. ", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0),
        //14
        Story(title: "Gave into the temptation, huh? Though it is good for the wallet, you ate one gordita too many and had a slow walk back after it hit like a rock.", choice1: "The", choice2: "End", storyDestination1: 0, storyDestination2: 0)
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
