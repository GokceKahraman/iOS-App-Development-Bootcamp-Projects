//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories =
    [Story(
        storyTitle: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
        choice1: "I'll hop in. Thanks for the help!",
        choice2: "Better ask him if he's a murderer first."
    ),
     Story(
        storyTitle: "He nods slowly, unfazed by the question.",
        choice1: "At least he's honest. I'll climb in.",
        choice2: "Wait, I know how to change a tire."
     ),
     Story(
        storyTitle: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        choice1: "I love Elton John! Hand him the cassette tape.",
        choice2: "It's him or me! You take the knife and stab him."
     ),
     Story(
        storyTitle: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        choice1: "The",
        choice2: "End"
     ),
     Story(
        storyTitle: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        choice1: "The",
        choice2: "End"
     ),
     Story(
        storyTitle: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
        choice1: "The",
        choice2: "End"
     )
     
    ]
    
    var questionNumber = 0;
    
    mutating func nextStory(userChoice: String) -> Int {
        
        if userChoice == stories[questionNumber].choice1 {
            questionNumber += 1
        } else {
            questionNumber += 2
        }
        
        return questionNumber
    }
    
    func getStory() -> String {
        return stories[questionNumber].storyTitle
    }
    
    func choice1() -> String {
        return stories[questionNumber].choice1
    }
    
    func choice2() -> String {
        return stories[questionNumber].choice2
    }
}
