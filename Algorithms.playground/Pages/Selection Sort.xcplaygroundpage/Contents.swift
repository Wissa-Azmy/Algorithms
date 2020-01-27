//: [Previous](@previous)

import Foundation

var str = "Selection Sort"

//: [Next](@next)
func selectionSort(array: [Int]) -> [Int] {
    var sortedArray = array
    
    for index in 0..<array.count {
        var minValueIndex = index
        
        for zindex in index + 1 ..< array.count {
            if sortedArray[minValueIndex] > sortedArray[zindex] { // compare min to all other elements in array
                minValueIndex = zindex // Select the index of the min value
            }
        }
        
        if index != minValueIndex {
            let temp = sortedArray[index]
            sortedArray[index] = sortedArray[minValueIndex]
            sortedArray[minValueIndex] = temp
        }
    }
    
    return sortedArray
}

selectionSort(array: [3,5,4,1,7,2])
