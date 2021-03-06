//
//  Day4ClassVsInstance.swift
//  Datasnok
//
//  Created by Vladimir Urbano on 7/1/16.
//  Copyright © 2016 Vladimir Urbano. All rights reserved.
//

/*
Objective
In this challenge, we're going to learn about the difference between a class and an instance; because this is an Object Oriented concept, it's only enabled in certain languages. Check out the Tutorial tab for learning materials and an instructional video!

Task
Write a Person class with an instance variable, , and a constructor that takes an integer, , as a parameter. The constructor must assign  to  after confirming the argument passed as  is not negative; if a negative argument is passed as , the constructor should set  to  and print Age is not valid, setting age to 0.. In addition, you must write the following instance methods:

yearPasses() should increase the  instance variable by .
amIOld() should perform the following conditional actions:
If , print You are young..
If  and , print You are a teenager..
Otherwise, print You are old..
To help you learn by example and complete this challenge, much of the code is provided for you, but you'll be writing everything in the future. The code that creates each instance of your Person class is in the main method. Don't worry if you don't understand it all quite yet!

Note: Do not remove or alter the stub code in the editor.

Input Format

Input is handled for you by the stub code in the editor.

The first line contains an integer,  (the number of test cases), and the  subsequent lines each contain an integer denoting the  of a Person instance.

Constraints



Output Format

Complete the method definitions provided in the editor so they meet the specifications outlined above; the code to test your work is already in the editor. If your methods are implemented correctly, each test case will print  or lines (depending on whether or not a valid  was passed to the constructor).

Sample Input

4
-1
10
16
18
Sample Output

Age is not valid, setting age to 0.
You are young.
You are young.

You are young.
You are a teenager.

You are a teenager.
You are old.

You are old.
You are old.
Explanation

Test Case 0:
Because , our code must set  to  and print the "Age is not valid..." message followed by the young message. Three years pass and , so we print the young message again.

Test Case 1:
Because , our code should print that the person is young. Three years pass and , so we print that the person is now a teenager.

Test Case 2:
Because , our code should print that the person is a teenager. Three years pass and , so we print that the person is old.

Test Case 3:
Because , our code should print that the person is old. Three years pass and the person is still old at , so we print the old message again.
*/

import Foundation

class Person_1 {
	var age: Int = 0
	
	init (initialAge: Int) {
		// Add some more code to run some checks on initialAge
		if initialAge < 0 {
			self.age = 0
			print("Age is not valid, setting age to 0.")
		} else {
			self.age = initialAge
		}
	}
	
	func amIOld () {
		// Do some computations in here and print out the correct statement to the console
		switch self.age {
		case 0 ... 12 :
			print("You are young.")
		case 13 ... 17 :
			print("You are a teenager.")
		default :
			print("You are old.")
		}
	}
	
	func yearPasses() {
		// Increment the age of the person in here
		self.age += 1
	}
}

class Day4ClassVsInstance {
	init() {
		var t = Int(readLine(stripNewline: true)!)!
		
		while t > 0 {
			let age = Int(readLine(stripNewline: true)!)!
			let p = Person_1(initialAge: age)
			p.amIOld()
			
			for _ in 1 ... 3 {
				p.yearPasses()
			}
			
			p.amIOld()
			print("")
			
			t = t - 1 // decrement t
		}
	}
}
