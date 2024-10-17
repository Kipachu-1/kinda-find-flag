//
//  types.swift
//  kinda-find-flag
//
//  Created by Arsen Kipachu on 10/17/24.
//

import Foundation

struct FlagQuestion {
    let flagImageName: String     // Name of the image file (e.g., "france.png")
    let options: [String]         // List of possible country names
    let correctAnswer: String     // The correct country name
    
    // Optional: Method to check if an answer is correct
    func isCorrectAnswer(_ answer: String) -> Bool {
        return answer == correctAnswer
    }
}
