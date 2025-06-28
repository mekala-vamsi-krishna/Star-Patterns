//
//  main.swift
//  Patterns
//
//  Created by Mekala Vamsi Krishna on 3/24/25.
//

import Foundation

// MARK: Box Star Pattern
func boxPattern(n: Int) {
    for _ in 1...n {
        for _ in 1...n {
            print("*", terminator: " ")
        }
        print("", terminator: "\n")
    }
}

//boxPattern(n: 5)

// MARK: Right angle triangle star pattern
func rightTrianglePattern(n: Int) {
    for rows in 1...n {
        for _ in 1...rows {
            print("*", terminator: " ")
        }
        print("", terminator: "\n")
    }
}
//rightTrianglePattern(n: 5)

// MARK: rightTriangleWithNumbers
func rightTriangleWithNumbers(n: Int) {
    for i in 1...n {
        var rowCount = 0
        for _ in 1...i {
            rowCount += 1
            print(rowCount, terminator: " ")
        }
        print("", terminator: "\n")
    }
}
//rightTriangleWithNumbers(n: 5)

// MARK: topToBottomDecreaseStarPyramid
func topToBottomDecreaseStarPyramid(n: Int) {
    var rowCount = n
    for i in 1...n {
        for _ in 1...rowCount {
            print("*", terminator: " ")
        }
        print("", terminator: "\n")
        rowCount -= 1
    }
}
//topToBottomDecreaseStarPyramid(n: 5)

// MARK: topToBottomDecreaseStarPyramidwithNumbers
func topToBottomDecreaseStarPyramidWithNumbers(n: Int) {
    var rowCount = n
    for i in 1...n {
        for i in 1...rowCount {
            print(i, terminator: " ")
        }
        print("", terminator: "\n")
        rowCount -= 1
    }
}
//topToBottomDecreaseStarPyramidWithNumbers(n: 5)

// MARK: pyramid
func pyramid(rows: Int) {
    guard rows > 0 else {
        print("Number of rows must be greater than 0")
        return
    }
    for i in 1...rows {
        if (rows - i) > 0 {
            for _ in 1...(rows - i) {
                print(" ", terminator: " ")
            }
        }
        
        // Inner loop for printing stars
        for _ in 1...(2 * i - 1) {
            print("*", terminator: " ")
        }
        print("", terminator: "\n")
    }
}
//pyramid(rows: 4)

// MARK: reversePyramid
func reversePyramid(rows: Int) {
    for i in 1..<rows {
        guard rows > 0 else {
            print("Number of rows must be greater than 0")
            return
        }
        if rows - i > 0 {
            for _ in 0..<i {
                print(" ", terminator: " ")
            }
        }
        
        for _ in 0..<(2 * (rows - i) - 1) {
            print("*", terminator: " ")
        }
        
        
        print(" ", terminator: "\n")
    }
}
//reversePyramid(rows: 5)

// MARK: rhombus
func rhombus(rows: Int) {
    for i in 1..<rows {
        for _ in 1...rows - i {
            print(" ", terminator: " ")
        }
        
        for i in 1...(2*i-1) {
            print("*", terminator: " ")
        }
        print("", terminator: "\n")
    }
    
    for i in 1..<rows {
        guard rows > 0 else {
            print("Number of rows must be greater than 0")
            return
        }
        if rows - i > 0 {
            for _ in 0..<i {
                print(" ", terminator: " ")
            }
        }
        
        for _ in 0..<(2 * (rows - i) - 1) {
            print("*", terminator: " ")
        }
        
        
        print(" ", terminator: "\n")
    }
}
//rhombus(rows: 4)

// MARK: trianglePyramid
func trianglePyramid(rows: Int) {
    for i in 1...rows {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("", terminator: "\n")
    }
    
    for i in 1...rows {
        if (rows-i > 0) {
            for _ in 0..<rows-i {
                print("*", terminator: "")
            }
        }
        print("", terminator: "\n")
    }
}
//trianglePyramid(rows: 4)

// MARK: binaryPyramid
func binaryPyramid(rows: Int) {
    var start = 1
    for i in 1...rows {
        for col in 1...i {
            print("\(start)", terminator: "")
            start = start == 1 ? 0 : 1
        }
        print("", terminator: "\n")
    }
}
//binaryPyramid(rows: 5)

// MARK: doublePyramidsWithNumbers
func doublePyramidsWithNumbers(rows: Int) {
    for i in 1...rows {
        for col in 1...i {
            print("\(col)", terminator: " ")
        }
        
        if rows*2 - 2*i > 0 {
            for j in 1...rows*2 - 2*i {
                print(".", terminator: " ")
            }
        }
        
        for i in (1...i).reversed() {
            print("\(i)", terminator: " ")
        }
        
        print(" ", terminator: "\n")
    }
}
//doublePyramidsWithNumbers(rows: 7)

// MARK: pyramid with continuity numbers

func pyramidiWithContinuityNumbers(rows: Int) {
    var num = 1
    
    for i in 1...rows {
        for j in 1...i {
            print(num, terminator: " ")
            num = num + 1
        }
        print(" ", terminator: "\n")
    }
}
//pyramidiWithContinuityNumbers(rows: 5)

// MARK: Alphabets Pyramid

func alphabetsPyramid(rows: Int) {
    var letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    for i in 1...rows {
        for j in 1...i {
            print(letters[j - 1], terminator: " ")
        }
        print(" ", terminator: "\n")
    }
}
//alphabetsPyramid(rows: 5)

// MARK: reverseAlphabetsPyramid
func reverseAlphabetsPyramid(rows: Int) {
    var letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    for i in 1...rows {
        for j in 1...rows - i + 1 {
            print(letters[j - 1], terminator: " ")
        }
        
        print(" ", terminator: "\n")
    }
}
//reverseAlphabetsPyramid(rows: 4)

// MARK: sameAlphabetsPyramid

func sameAlphabetsPyramid(rows: Int) {
    var letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    for i in 1...rows {
        for j in 1...i {
            print(letters[i-1], terminator: " ")
        }
        
        print(" ", terminator: "\n")
    }
}
//sameAlphabetsPyramid(rows: 5)

// MARK: symmetricalPyramid

func symmetricalPyramid(rows: Int) {
    for i in 1...rows {
        if (rows - i) > 0 {
            for _ in 1...(rows - i) {
                print(" ", terminator: " ")
            }
        }
        
        // Inner loop for printing stars
        for j in 1...(2 * i - 1) {
            print("\(j)", terminator: " ")
        }
        print(" ", terminator: "\n")
    }
}
symmetricalPyramid(rows: 5)
