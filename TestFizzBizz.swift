/*
 Please find below the test for the iOS applicants. They are given 24 hours to complete the test.
 Write the least efficient – but working – implementation of FizzBuzz that you can think of. It can be
 messy and slow, as long as it works. We may ask you what makes it bad in an interview, so be
 prepared to explain your working.
 The rules of FizzBuzz are as follows:
 For numbers 1 through 100,
  if the number is divisible by 3 print Fizz;
  if the number is divisible by 5 print Buzz;
  if the number is divisible by 3 and 5 (15) print FizzBuzz;
  else, print the number.
 You are welcome to use Swift, Objective C, C# or Java in your implementation. Upload your code to
 a public repository on Github and email us the link.
 
 */

func FizzBuzz(min :Int, max:Int)
{
    //Save Number range in an Array
    var inputsArray : [Int]
    inputsArray = [Int]()
    
    //Store to print in an Array
    var printArray : [String]
    printArray = [String]()
    
    //add min to max value in an inputsArray
    for index in min...max
    {
        inputsArray.append(index)
    }
    
    //add min to max value in an printArray
    for index in min...max
    {
        printArray.append("\(index)")
    }
    
    //check inputs ranges either statify FizzBuzz conditions.
    for index in inputsArray
    {
        if(index % 3 == 0 && index % 5 == 0) //If number is divided by both 3 and 5
        {
            printArray[index-1] = "FizzBuzz" //Update printArray
        }
        else if (index % 3 == 0) //If number is divided by 3 only
        {
            printArray[index-1] = "Fizz" //Update printArray
        }
        else if (index % 5 == 0) //If number is divided by 5 only
        {
            printArray[index-1] = "Buzz" //Update printArray
        }
        
    }
    for i in printArray
    {
        print(i) //print printArray data on console.
    }
}


FizzBuzz(min: 1, max: 100) //call FizBuzz


/*
 
 //For caomparing Worst and best case excution ratio
 
import CoreFoundation

func FizzBuzz1(min :Int, max:Int)
{
    
    
    for index in min...max
    {
        if(index % 3 == 0 && index % 5 == 0)
        {
            print("FizzBuzz")
        }
        else if (index % 3 == 0)
        {
            print("Fizz")
        }
        else if (index % 5 == 0)
        {
            print("Buzz")
        }
        else
        {
            print(index)
        }
        
        
    }
    
}





func FizzBuzz2(min :Int, max:Int)
{
    
    var inputsArray : [Int]
    
    inputsArray = [Int]()
    
    var printArray : [String]
    
    printArray = [String]()
    
    for index in min...max
    {
        inputsArray.append(index)
        //print(index)
    }
    
    for index in min...max
    {
        printArray.append("\(index)")
        //print(index)
    }
    
    for index in inputsArray
    {
        if(index % 3 == 0 && index % 5 == 0)
        {
            //print("FizzBuzz")
            printArray[index-1] = "FizzBuzz"
        }
        else if (index % 3 == 0)
        {
            printArray[index-1] = "Fizz"
        }
        else if (index % 5 == 0)
        {
            printArray[index-1] = "Buzz"
        }
        
    }
    // print(printArray)
    for i in printArray
    {
        print(i)
    }
}


func checkExcutionTime(min : Int, max :Int)
{
    
    let startTime = CFAbsoluteTimeGetCurrent()
    FizzBuzz1(min: min, max: max)
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    
    
    let startTime1 = CFAbsoluteTimeGetCurrent()
    FizzBuzz2(min: min, max: max)
    let timeElapsed1 = CFAbsoluteTimeGetCurrent() - startTime1
    
    print("Time elapsed for FizzBuzz1 Best: \(timeElapsed) s.")
    print("Time elapsed for FizzBuzz2 Worst: \(timeElapsed1) s.")
    print("FizzBuzz1 is \(timeElapsed1/timeElapsed) faster than FizzBuzz2")
    
}

checkExcutionTime(min: 1,max: 1000)
 
 */

