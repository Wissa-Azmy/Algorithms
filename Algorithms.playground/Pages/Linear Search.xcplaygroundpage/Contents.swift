//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
let items = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53]

func search(for item: Int, in array: [Int]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == item {
            return index
        }
    }
    
    return nil
}

print(search(for: 87, in: items))
print(search(for: 250, in: items))
