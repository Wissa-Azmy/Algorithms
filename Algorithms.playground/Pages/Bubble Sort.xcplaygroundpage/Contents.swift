//: [Previous](@previous)

import Foundation

var str = "Bubble Sort"


//: [Next](@next)
func bubbleSort(_ shuffledArray: [Int]) -> [Int] {
    var array = shuffledArray
    for i in 0..<array.count {
        for j in 1..<array.count {
            if array[j] < array[j-1] {
                let tmp = array[j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
    }
    return array
}

print(bubbleSort([5,1,4,2,8]))

/*
Optimization
The bubble sort algorithm can be easily optimized by observing that the n-th pass finds the n-th largest element
and puts it into its final place.
So, the inner loop can avoid looking at the last n-1 items when running for the n-th time:
*/
func optimizedBubbleSort(_ shuffledArray: [Int]) -> [Int] {
    var array = shuffledArray
    for i in 0..<array.count {
        for j in 1..<array.count - i {
            if array[j] < array[j-1] {
                let tmp = array[j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
    }
    return array
}

print(optimizedBubbleSort([5,1,4,2,8]))
