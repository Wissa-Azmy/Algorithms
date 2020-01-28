//: [Previous](@previous)

import Foundation

var str = "Insertion Sort"
// Perfect for use when data is sorted on insertion

//: [Next](@next)
func insertionSort(array: [Int]) -> [Int] {
    var sortedArray = array
    var zindex = 0
    
    for key in 1..<sortedArray.count {
        let value = sortedArray[key]
        var zindex = 0
        print("Cycle: \(key)\nBefore: \(sortedArray)")
        
        for index in stride(from: key - 1, through: 0, by: -1) {
            zindex = index
            print("Inner Cycle \(index):")
            guard sortedArray[index] > value else { break }

            if sortedArray[index] != nil {
                sortedArray[index + 1] = sortedArray[index]
            }
            print("compare(\(sortedArray[index]) & \(value)),", "Sort: \(sortedArray)")
        }
        
        if sortedArray[zindex + 1] > value {
            sortedArray[zindex + 1] = value
        }
        print("After: \(sortedArray)\n")
    }

    if sortedArray[0] > sortedArray[1] {
        let temp = sortedArray[0]
        sortedArray[0] = sortedArray[1]
        sortedArray[1] = temp
    }
    print("\n\nFinal:\(sortedArray)")
    return sortedArray
}


insertionSort(array: [2,12,1,9,76,4,3])

