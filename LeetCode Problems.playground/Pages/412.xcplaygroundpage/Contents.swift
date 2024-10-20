//: [Previous](@previous)

/// Fizz Buzz
/// Given an integer `n`, return a string array `answer` (1-indexed) where:
/// `answer[i] == "FizzBuzz"` if `i` is divisible by `3` and `5`.
/// `answer[i] == "Fizz"` if `i` is divisible by `3`.
/// `answer[i] == "Buzz"` if `i` is divisible by `5`.
/// `answer[i] == i` (as a String) if none of the above conditions are true.

import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        guard n > 0 else { return [] }
        
        var answer: [String] = []
        
        for number in 1...n {
            var string = ""
            if number % 3 == 0 { string += "Fizz" }
            if number % 5 == 0 { string += "Buzz" }
            answer.append(string.isEmpty ? String(number) : string)
        }
        
        return answer
    }
}

//: [Next](@next)
