//: [Previous](@previous)

/// Richest Customer Wealth
/// You are given an `m x n` integer grid `accounts` where `accounts[i][j]` is the amount of money the `ith` customer has in the `j​​​​​​​​​​​th` bank.
/// Return the wealth that the richest customer has.
/// A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

import Foundation

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        guard accounts.count > 1 else { return accounts[0].reduce(0, +) }
        
        var maxWealth: Int = 0
        
        for customer in accounts {
            maxWealth = max(maxWealth, customer.reduce(0, +))
        }
        
        return maxWealth
    }
}

//: [Next](@next)
