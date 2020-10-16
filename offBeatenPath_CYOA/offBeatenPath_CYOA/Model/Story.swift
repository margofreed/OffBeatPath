//
//  Story.swift
//  offBeatenPath_CYOA
//
//  Created by Freed, Margo on 10/15/20.
//

import Foundation

struct Story{
    var t: String
    var c1: String
    var c2: String
    var s1: Int
    var s2: Int
    
    init(title: String, choice1: String, choice2: String, storyDestination1: Int, storyDestination2: Int) {
        t = title
        c1 = choice1
        c2 = choice2
        s1 = storyDestination1
        s2 = storyDestination2
    }
}
