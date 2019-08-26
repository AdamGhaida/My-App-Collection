//
//  Question.swift
//  Quizzler
//
//  Created by Adam Abu Ghaida on 8/24/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation


class Question{
    
    let questionText: String
    let questionAnswer: Bool
    
    init(text: String, correctAnswer: Bool){
        questionText = text
        questionAnswer = correctAnswer
    }
}
