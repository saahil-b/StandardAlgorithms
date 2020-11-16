//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Bahadur, Saahil (PAH) on 13/11/2020.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        
        if data.count < 2 {
            return data
        }
        
        var result = data
        var done = false
        
        if result.count == 2 {
            
        }
        
        while done == false {
            done = true
            
            for i in 0...(result.count - 2) {
                if result[i] > result[i+1] {
                    let temp = result[i]
                    result[i] = result[i+1]
                    result[i+1] = temp
                    done = false
                }
            }
            
        }
        
        return result
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        
        if data.count < 2 {
            return data
            
        } else if data.count == 2 {
            if data[0] > data[1] {
                return [data[1], data[0]]
                
            } else {
                return data
                
            }
        }
        
        var allArray: [[Int]] = []
        
        for item in data {
            allArray.append([item])
        }
        
        if Int(allArray.count/2) != allArray.count/2 {
            allArray[allArray.count - 2].append(allArray[allArray.count - 1][0])
            allArray.remove(at: (allArray.count - 1))
        }
        
        while allArray.count > 1 {
            
            var changeArray: [[Int]] = []
            
            for i in 0..<(((allArray.count)/2)) {
                let first = allArray[2*i]
                let second = allArray[(2*i) + 1]
                
                var currentF = 0
                var currentS = 0
                changeArray.append([])
                
                while currentF < first.count && currentS < second.count {
                    if first[currentF] < second[currentS] {
                        changeArray[i].append(first[currentF])
                        currentF += 1
                    } else {
                        changeArray[i].append(second[currentS])
                        currentS += 1
                    }
                }
                    
                if currentF >= first.count {
                    for j in currentS..<(second.count) {
                        changeArray[i].append(second[j])
                    }
                } else {
                    for j in currentF..<(first.count) {
                        changeArray[i].append(first[j])
                    }
                        
                }
            }
            
            allArray = changeArray
        }
        
        return allArray[0]
    }
    
}
