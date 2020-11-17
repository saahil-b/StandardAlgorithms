//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Bahadur, Saahil (PAH) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {
    func testBubbleSortwithIntegerArrayReturnsSortedArray() {
        
        //range
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBubbleSortwithVariousIntegerArraysReturnsEachOneSorted() {
        let sorting = Sorting()
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]), (data: [1,100,4,3,15], expected: [1,3,4,15,100]), (data: [], expected: []), (data: [1], expected: [1]), (data: [2,1], expected: [1,2]), (data: [2,1,2], expected: [1,2,2])]
        
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testMergeSortwithIntegerArrayReturnsSortedArray() {
        
        //range
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.mergeSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSortwithVariousIntegerArraysReturnsEachOneSorted() {
        let sorting = Sorting()
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]), (data: [1,100,4,3,15], expected: [1,3,4,15,100]), (data: [], expected: []), (data: [1], expected: [1]), (data: [2,1], expected: [1,2]), (data: [2,1,2], expected: [1,2,2])]
        
        for test in testData {
            let result = sorting.mergeSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }

    func testQuickSortwithIntegerArrayReturnsSortedArray() {
        
        //range
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.quickSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }

    func testQuickSortwithVariousIntegerArraysReturnsEachOneSorted() {
        let sorting = Sorting()
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]), (data: [1,100,4,3,15], expected: [1,3,4,15,100]), (data: [], expected: []), (data: [1], expected: [1]), (data: [2,1], expected: [1,2]), (data: [2,1,2], expected: [1,2,2])]
        
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }


}
