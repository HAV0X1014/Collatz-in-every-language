// By Biden/pres_biden/Fentman/Inducible/whichever username I go by next lol
// An official Fent production: https://discord.gg/4sMGGZ6bSX
// Please reference the official repo: https://github.com/Inducible/Collatz-conjecture-Swift

import Foundation // i need this for the date stuff

let Input = Int(readLine()!) ?? 0 // sets up the input used to be an integer value provided by the user
var CurrentNum = Input // of course we start by testing the input number
var WorkingOnNum = CurrentNum // of course we do our work first based off the input number
print ("Now testing:", CurrentNum) // tells the user the number they program starts testing
// print ("Started work on:", WorkingOnNum) // tells the user the number they program starts working on for debug purposes
var Steps = 0 // ofc we start out with 0 calcuations done lol
var TimeTaken = Double(0) // of course we start at 0 seconds, we also have it as a double value to work with the double value of the real time
var StartTime = Date().timeIntervalSinceReferenceDate // of course the start time starts at the starting of the work


 while true { // repeat forever as u wanna be forver looking for the highest collatz conjecuture compatable number using my shitty Swift code snippit that lowkey can't even be deployed anywhere because its cooler than whatever fuckass efficient shit them nerds use lmao

let realtime = Date().timeIntervalSinceReferenceDate // now of course we have to get the time as of now

 if (WorkingOnNum == 1) { // does this once you've proved it for the number ur currently testing

print (" ") // gotta add some space

TimeTaken = (realtime - StartTime) // gets the time since we started

let HighestConfirmed = CurrentNum // now you have a new highest confirmed number since you found the testing number to work

print ("New highest confirmed number in", Steps, "steps and in", TimeTaken, "seconds:", HighestConfirmed) // shows all the info that guy HAV0X wanted because he's a nerd lmao

print (" ") // gotta add some space

CurrentNum = (HighestConfirmed + 1) // makes sure you now have the new goal of testing the number right above the previusly confirmed to work one
// print ("Now testing:", CurrentNum) // tells the user which number is currently being tested (for debag purposes)

WorkingOnNum = CurrentNum // now starts work with your new possible testing number
// print ("Started work again on:", WorkingOnNum)  // tells the user which number is currently being worked with (for debug purposes)

Steps = 0 // now that we are starting over with our new possible testing number we have 0 calculations
}


 if ((WorkingOnNum % 2 == 0)) { // checks to see if even

// print ("About to divide even number", WorkingOnNum,"by 2") // tells the user about the upcoming division for debugging
let  PrevNum = WorkingOnNum // getting what is about to be the previous number
WorkingOnNum = WorkingOnNum/2 // divides by 2
// print ("Divided even number", PrevNum, "by 2 to get:", WorkingOnNum) // tells the user about the division for debugging
Steps = Steps + 1 // we just did a step/calculation so we add onto that
    }


 else if (WorkingOnNum % 2 != 0) { // checks to see if odd

// print ("About to multiply odd number", WorkingOnNum,"by 3 and then add 1") // tells the user about the upcoming multiplication and divison for debugging
let PrevNum = WorkingOnNum // getting what is about to be the previous number
WorkingOnNum = ((WorkingOnNum*3) + 1) // multiplies by 3 and adds 1
 //print ("Multiplied odd number", PrevNum, "by 3 and added 1 to get:", WorkingOnNum) // tells the user about the multiplication and divison for debugging
Steps = Steps + 1 // we just did a step/calculation so we add onto that
    }
} // just put it