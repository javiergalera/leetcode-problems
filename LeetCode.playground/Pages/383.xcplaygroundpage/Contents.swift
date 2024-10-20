//: [Previous](@previous)

/// Ransom note
/// Given two strings `ransomNote` and `magazine`, return `true` if `ransomNote` can be constructed by using letters from `magazine` and `false` otherwise.
/// Each letter in `magazine` can only be used once in `ransomNote`.

import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineLetters = magazine
        
        for letter in ransomNote {
            if let index = magazineLetters.firstIndex(of: letter) {
                magazineLetters.remove(at: index)
            } else {
                return false
            }
        }
        
        return true
    }
}

//: [Next](@next)
