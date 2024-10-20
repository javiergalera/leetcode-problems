//: [Previous](@previous)

/// Number of steps to reduce a number to zero
/// Given an integer `num`, return the number of steps to reduce it to zero.
/// In one step, if the current number is even, you have to divide it by `2`, otherwise, you have to substract `1` from it.

class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var number = num
        var steps: Int = 0
        
        while number != 0 {
            if number % 2 == 0 {
                number /= 2
            } else {
                number -= 1
            }
            
            steps += 1
        }
        
        return steps
    }
}

/// BEST SOLUTION
/// `num.bitWidth - num.leadingZeroBitCount`: This gives the number of times we can divide by 2 (right shifts).
/// `num.nonZeroBitCount`: This gives the number of 1's in the binary representation, which corresponds to how many times we substract 1 (the odd numbers).
/// `- 1` at the end to account for the initial step for even numbers.
class BestSolution {
    func numberOfSteps(_ num: Int) -> Int {
        guard num > 1 else { return num }
        return (num.bitWidth - num.leadingZeroBitCount) + num.nonZeroBitCount - 1
    }
}

//: [Next](@next)
