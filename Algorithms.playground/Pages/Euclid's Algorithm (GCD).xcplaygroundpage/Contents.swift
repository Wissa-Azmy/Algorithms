//: [Previous](@previous)

import Foundation

var str = "Euclid's algorithm, Greatest common denominator"

// Use In-Out parmaters to have the copy-in copy-out or pass by reference behavior inside the function scope
// To be able to handle parameters as variables inside function scope
func findGreatesCommonDenominator(_ first: inout Int, _ second: inout Int) -> Int {
    while second != 0 {
        let temp = first
        first = second
        second = temp % first
    }
    
    return first
}

// In-Out parameters can only be passed as variable arguments
// Constants and literals values are not allowed
var a = 60, b = 96, c = 20, d = 8
print(findGreatesCommonDenominator(&a, &b))
print(findGreatesCommonDenominator(&c, &d))
