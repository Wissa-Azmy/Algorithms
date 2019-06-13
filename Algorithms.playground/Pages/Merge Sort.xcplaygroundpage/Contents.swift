//: [Previous](@previous)

import Foundation

var str = "Merge Sort"

//: [Next](@next)

let items = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53]

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    print("Left Array: \(leftArray) ---- Right Array: \(rightArray)")
    
    return merge(leftArray, rightArray)
}

func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var orderedArray = [Int]()
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else if rightArray[rightIndex] < leftArray[leftIndex] {
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        } else {
            orderedArray.append(leftArray[leftIndex])
            orderedArray.append(rightArray[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        orderedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        orderedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

print(mergeSort(items))



// Another implementation
func mergeSort2(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let midIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<midIndex]))
    let rightArray = mergeSort(Array(array[midIndex..<array.count]))
    
    return merge2(leftArray, rightArray)
}

func merge2(_ leftArr: [Int], _ rightArr: [Int]) -> [Int] {
    var leftArray = leftArr, rightArray = rightArr
    var sortedArray = [Int]()
    
    while !leftArray.isEmpty && !rightArray.isEmpty {
        if leftArray.first! < rightArray.first! {
            sortedArray.append(leftArray.removeFirst())
        } else if rightArray.first! < leftArray.first! {
            sortedArray.append(rightArray.removeFirst())
        } else {
            sortedArray.append(leftArray.removeFirst())
            sortedArray.append(rightArray.removeFirst())
        }
    }
    
    while !leftArray.isEmpty {
        sortedArray.append(leftArray.removeFirst())
    }
    
    while !rightArray.isEmpty {
        sortedArray.append(rightArray.removeFirst())
    }
    
    return sortedArray
}


print(mergeSort2(items))

