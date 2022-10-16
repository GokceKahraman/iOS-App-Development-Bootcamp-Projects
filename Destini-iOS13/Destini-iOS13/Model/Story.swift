//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
//    story title, choice1 and choice2.
    let storyTitle : String
    let choice1 : String
    let choice2 : String

    init(storyTitle: String, choice1: String, choice2: String) {
        self.storyTitle = storyTitle
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
