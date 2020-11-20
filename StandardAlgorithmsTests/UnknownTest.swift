//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Bahadur, Saahil (PAH) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {

    func testFirstAlgorithmwithIntArray() {
        let unknown = Unknown()
        
        let expected = 5
        
        let data = [1,2,3,5,6,7,8,9,0,9,8,7,6,4]
        
        let result = unknown.firstAlgorithm(data: data)
        
        XCTAssertEqual(result, expected)
    }
    
    func testFirstAlgorithmwithMultipleIntArrays() {
        
        let unknown = Unknown()
        
        let testData = [(data: [6,3,1,9,2], expected: 8), (data: [1,100,4,3,15], expected: 16), (data: [], expected: 0), (data: [1], expected: 2), (data: [2,1], expected: 3), (data: [2,1,2], expected: 4)]
        
        for test in testData {
            let result = unknown.firstAlgorithm(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
        
    }
    
    func testSecondAlgorithmwithIntArray() {
        let unknown = Unknown()
        
        let data = [1,1,4,4,4,7,9,2,2]
        
        let expected = 4
        
        let result = unknown.secondAlgorithm(data: data)
        
        XCTAssertEqual(result, expected)
    }
    
    func testSecondAlgorithmwithMultipleIntArrays() {
        
        let unknown = Unknown()
        
        let testData = [(data: [1,1,2,2,2,3], expected: 2), (data: [0,0,3,4,6,6,6,7], expected: 6), (data: [1], expected: 1), (data: [1,2,2], expected: 2), (data: [1,2,2,2,4,4,4,4,4], expected: 4)]
        
        for test in testData {
            let result = unknown.secondAlgorithm(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testThirdAlgorithmwithIntArray() {
        //arrange
        let unknown = Unknown()
        let data = [1,9,9,3,2]
        let expected = 2
        var result: Int?
        
        
        
        if let x = unknown.thirdAlgorithm(data: data) {
            result = x
        } else {
            result = nil
        }
        
        XCTAssertEqual(result, expected)
        
    }
    
    func testThirdAlgorithmwithMultipleIntArrays() {
        
        let unknown = Unknown()
        
        let testData = [(data: [1,1,2,2,2,3], expected: 2), (data: [0,0,3,4,6,6,6,7], expected: 3), (data: [1,2,2], expected: 2), (data: [-1,2,2,-1,4,9], expected: 2)]
        
        for test in testData {
            let result = unknown.thirdAlgorithm(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testThirdAlgorithmforNilReturn() {
        
        let unknown = Unknown()
        
        let testData = [[1,1], [0], [], [2,2,2,2,2]]
        
        for test in testData {
            let result = unknown.thirdAlgorithm(data: test)
            XCTAssertEqual(result, nil)
        }
    }
    
    func testFourthAlgorithmwithIntArray() {
        
        let unknown = Unknown()
        
        let data = [1,2,6,3,4,4,2,9,2]
        
        let result = unknown.fourthAlgorithm(data: data)
        
        XCTAssertEqual(result, 2)
        
    }

}
