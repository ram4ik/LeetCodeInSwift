//
//  RobotReturnToOrigin.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import Foundation

class RobotReturnToOrigin {
    
    func judgeCircle(_ moves: String) -> Bool {
        
        var x = 0
        var y = 0
        
        for i in moves.indices {
            if moves[i] == "U" { y += 1 }
            else if moves[i] == "R" { x += 1 }
            else if moves[i] == "D" { y -= 1 }
            else if moves[i] == "L" { x -= 1 }
        }
        
        return x == 0 && y == 0
    }
}
