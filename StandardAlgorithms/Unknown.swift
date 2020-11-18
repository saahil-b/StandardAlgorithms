//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Bahadur, Saahil (PAH) on 18/11/2020.
//

import Foundation

class Unknown {
    
    func firstAlgorithm(data: [Int]) -> Int {
        
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return (data[0] * 2)
        } else {
            return (data[0] + data[data.count - 1])
        }
    }
    
    func secondAlgorithm(data: [Int]) -> Int {
        
        if data.count < 3 {
            return data[0]
        }
        
        var places: [Int] = []
        var numbers: [Int] = []
        
        var current = data[0]
        
        for i in 0..<data.count {
            
            if data[i] != current {
                current = data[i]
                numbers.append(data[i])
                places.append(i)
            }
            
        }
        
        places.append(data.count - 1)
        
        var largest = 0
        var result = 0
        
        for i in 1..<places.count {
            if places[i] - places[i-1] > largest{
                largest = places[i] - places[i - 1]
                result = numbers[i-1]
                
            }
        }
        
        return result
        
    }
}
