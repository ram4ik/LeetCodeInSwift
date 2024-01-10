//
//  CountPrimes.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 10.01.2024.
//

import Foundation

class CountPrimes {
    
    func countPrimes(_ n: Int) -> Int {
        if n < 2 {
            return 0
        }
        var isPrime = [Bool](repeating: true, count: n)
        isPrime[0] = false
        isPrime[1] = false
        for i in 2..<Int(ceil(sqrt(Double(n)))) {
            if isPrime[i] {
                var multiples_of_i = i * 2
                while multiples_of_i < n {
                    isPrime[multiples_of_i] = false
                    multiples_of_i += i
                }
            }
        }
        var primeCount = 0
        for i in 0..<n {
            if isPrime[i] {
                primeCount += 1
            }
        }
        return primeCount
    }
}
