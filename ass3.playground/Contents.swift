import UIKit

/*
 Write a program that adds the numbers 1-255 to an array
 Swap two random values in the array
 Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in. The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type. How can you deal with this using your knowledge of types?
 Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
 Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.
 */


var array = [Int]()
for i in 1...50{
    array.append(i)
}

for _ in 0..<100{
    let v1 = Int.random(in: 0..<array.count)
    let v2 = Int.random(in: 0..<array.count)
    let temp = array[v1]
    array[v1] = array[v2]
    array[v2] = temp
}
//print(array)

let index = (array.firstIndex(of: 42))!
array.remove(at: index)
print("the answer to all the problems of my math teachers is actually at index: \(index)")
 
//print(array)
