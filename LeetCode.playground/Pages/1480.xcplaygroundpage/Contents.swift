//: [Previous](@previous)

/// Running Sum of 1d Array
/// Given an array `sums`. We define a running sum of an array as `runningSum[i] = sum(nums[0]...nums[i])`
/// Return the running sum of sums.

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        
        var result = nums
        
        for index in 1..<nums.count {
            result[index] += result[index - 1]
        }
        
        return result
    }
}

//: [Next](@next)
