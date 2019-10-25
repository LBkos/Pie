//
//  Game.swift
//  Apple Pie
//
//  Created by Константин Лопаткин on 22.10.2019.
//  Copyright © 2019 Konstantin Lopatkin. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaning: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaning -= 1
        }
    }
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
