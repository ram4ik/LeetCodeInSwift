//
//  BoatToSavePeople.swift
//  LeetCodeInSwift
//
//  Created by admin on 1/10/24.
//

import Foundation

class BoatToSavePeople {
    
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        
        let sortedPeople = people.sorted()
        
        var smallest = 0
        var biggest = sortedPeople.count - 1
        
        var boats = 0
        
        while biggest >= smallest {
            if sortedPeople[biggest] + sortedPeople[smallest] <= limit {
                biggest -= 1
                smallest += 1
            } else {
                biggest -= 1
            }
            boats += 1
        }
        
        return boats
    }
}
