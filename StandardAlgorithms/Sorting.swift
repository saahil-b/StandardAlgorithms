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
        
        if allArray.count % 2 != 0{
            if allArray[allArray.count - 1][0] > allArray[allArray.count - 2][0] {
                allArray[allArray.count - 2].append(allArray[allArray.count - 1][0])
                allArray.remove(at: (allArray.count - 1))
            } else {
                allArray[allArray.count - 1].append(allArray[allArray.count - 2][0])
                allArray.remove(at: (allArray.count - 2))
            }
        }
        
        while allArray.count > 1 {
            
            var changeArray: [[Int]] = []
            
            for i in 0..<(((allArray.count)/2)) {
                var first = allArray[2*i]
                var second = allArray[(2*i) + 1]
                
                changeArray.append([])
                
                while first.count > 0 && second.count > 0 {
                    if first[0] < second[0] {
                        changeArray[i].append(first[0])
                        first.remove(at: 0)
                        
                    } else {
                        changeArray[i].append(second[0])
                        second.remove(at: 0)
                        
                    }
                }
                
                if first.count > 0 {
                    for item in first {
                        changeArray[i].append(item)
                        
                    }
                } else if second.count > 0 {
                    for item in second {
                        changeArray[i].append(item)
                        
                    }
                }
            }
            
            allArray = changeArray
        }
        
        return allArray[0]
    }
    
    func quickSort(data: [Int]) -> [Int] {
        
        if data.count <= 1 {
            return data
        }
        
        var array = data
        
        // get pivot
        
        let pivot = data[0]
        
        array.remove(at: 0)
        
        //make upper and lower arrays
        var upper: [Int] = []
        var lower: [Int] = []
        
        for item in array {
            if item > pivot {
                upper.append(item)
            } else {
                lower.append(item)
            }
        }
        
        //sort then add to final array
        
        var finalArray: [Int] = []
        
        for item in quickSort(data: lower) {
            finalArray.append(item)
        }
        finalArray.append(pivot)
        for item in quickSort(data: upper) {
            finalArray.append(item)
        }
        
        return finalArray
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        var array = data
        var done = false
        var current = Int()
        var temp = Int()

        repeat {
            done = true

            for i in 0..<(array.count - 1){
                if array[i] > array[i + 1]{
                    current = i + 1
                    done = false
                    while current > 0 && array[current - 1] > array[current]{
                        temp = array[current]
                        array[current] = array[current - 1]
                        array[current - 1] = temp
                        current -= 1
                    }
                    break

                }
            }

        } while done == false

        return array
    }
    
}
