//: [Previous](@previous)

import Foundation

var str = "Recursion"

func countdown(_ number: Int) {
    if number == 0 {
        print("Done.")
        return
    }
    let stepNumber = number - 1
    print("\(number) -> \(stepNumber)...")
    countdown(stepNumber)
    print("\nFunction Call Stack step# \(stepNumber)")
}

countdown(5)


print("\n\n\n============ Power ============\n")

func getPower(of baseNumber: Int, to power: Int) -> Int {
    if power == 0 {
        return 1
    }
    
    print("\(baseNumber) -> \(baseNumber * baseNumber)...")
    return baseNumber * getPower(of: baseNumber, to: power - 1)
}

let result = getPower(of: 5, to: 3)
print("\nDone.\nResult: \(result)")


print("\n\n\n============ Factorial ============\n")

func factorial(of number: Int) -> Int {
    if number == 0 {
        return 1
    }
    
    return number * factorial(of: number - 1)
}

let result2 = factorial(of: 5)
print("\nDone.\nResult: \(result2)")
