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
    
    func thirdAlgorithm(data: [Int]) -> Int? {
        
        if data.count < 2 {
            return nil
        }
        
        var smallest = data[0]
        
        for item in data {
            if item < smallest {
                smallest = item
            }
        }
        
        var x = 0
        
        while data[x] == smallest && x < (data.count - 1){
            x += 1
        }
        
        if data[x] == smallest {
            return nil
        }
        
        var result = data[x]
        
        
        for item in data {
            if item > smallest && item < result {
                result = item
            }
        }
        
        return result
        
    }
    
    func fourthAlgorithm(data: [Int]) {
        var freqDict: [Int: Int] = [:]
        
        for item in data {
            if freqDict.keys.contains(item) {
                freqDict[item]! += 1
            } else {
                freqDict[item] = 1
            }
        }
        
        var largest = 0
        var result: Int
        
        for (key,value) in freqDict {
            if value > largest {
                result = key
            }
        }
    }
}
