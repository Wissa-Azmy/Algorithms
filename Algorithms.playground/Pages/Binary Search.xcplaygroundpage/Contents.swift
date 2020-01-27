import UIKit

var str = "Binary Search"


func binarySearch(_ array: [Int], value: Int) -> Int? {
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex <= highIndex {
        let midIndex = (lowIndex + highIndex) / 2
        if value == array[midIndex] {
            return midIndex
        } else if value > array[midIndex] {
            lowIndex = midIndex + 1
        } else {
            highIndex = midIndex - 1
        }
    }
    return nil
}


// Test cases
let testArray = [1, 3, 9, 11, 15, 19, 29]
let testVal1 = 25
let testVal2 = 15
print(binarySearch(testArray, value: testVal1)) // Should be nil
print(binarySearch(testArray, value: testVal2)!) // Should be 4
