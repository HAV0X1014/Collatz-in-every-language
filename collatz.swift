// By Biden/pres_biden/Fentman/Inducible/whichever username I go by next lol
// An official Fent production: https://discord.gg/4sMGGZ6bSX
// Please reference the official repo: https://github.com/Inducible/Collatz-conjecture-Swift

//Written by HAV0X_ with help from Inducible on 8/20/2025
import Foundation

print("Input a positive integer to run the collatz conjecture on")
let Input = Int(readLine()!) ?? 0
var CurrentNumber = Input

var PeakNumber = 0
var Steps = 0

print("Starting number: ", CurrentNumber)
let startingPoint = Date()

while (CurrentNumber != 1) {
    if (CurrentNumber % 2 == 0) {
        CurrentNumber = CurrentNumber / 2
    } else {
        CurrentNumber = ((CurrentNumber * 3) + 1)
    }
    if (CurrentNumber > PeakNumber) {
        PeakNumber = CurrentNumber
    }
    Steps += 1
}

print("Peak Number: ", PeakNumber, " Steps: ", Steps, "Calculation time: ", (startingPoint.timeIntervalSinceNow * -1))
