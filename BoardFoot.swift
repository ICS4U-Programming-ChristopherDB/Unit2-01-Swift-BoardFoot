//  BoardFoot.swift
//
//  Created by Christopher Di Bert
//  Created on 2024-03-18
//  Version 1.0
//  Copyright (c) Christopher Di Bert. All rights reserved.
//
//  This program calculates the length of wood per one board.

func main() {
    print("This program finds the length of a wooden board");
    print("where the volume of one foot is 144in^3 of wood.\n\n");

    print("Enter the height (in): ", terminator: "");

    if let userHeight = Double(readLine()!) {
        print("Enter the width (in): ", terminator: "");
        if let userWidth = Double(readLine()!) {
            let boardLength = calculateLength(height: userHeight, width: userWidth)
            if boardLength <= 0 {
                print("You must enter positive values!")
            }
            else {
                print("The board length is \(boardLength) inches.")
            }
        }
        else {
            print("You must enter a number for width!")
        }
    }
    else {
        print("You must enter a number for length!")
    }

}

func calculateLength(height: Double, width: Double) -> Double {
    // Constant representing volume of one board foot in in^3.
    let boardVolume: Double = 144.0

    // Calculates the board length.
    let boardLength: Double = boardVolume / (height * width)

    // Returns the board length.
    return boardLength
}

main()