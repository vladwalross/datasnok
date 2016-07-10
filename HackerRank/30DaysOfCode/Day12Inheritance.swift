//
//  Day12Inheritance.swift
//  HackerRank
//
//  Created by Vladimir Urbano on 7/9/16.
//  Copyright © 2016 Vladimir Urbano. All rights reserved.
//

/*
Objective
Today, we're delving into Inheritance. Check out the Tutorial tab for learning materials and an instructional video!

Task
You are given two classes, Person and Student, where Person is the base class and Student is the derived class. Completed code for Person and a declaration for Student are provided for you in the editor. Observe that Student inherits all the properties of Person.

Complete the Student class by writing the following:

A Student class constructor, which has  parameters:
A string, .
A string, .
An integer, .
An integer array (or vector) of test scores, .
A char calculate() method that calculates a Student object's average and returns the grade character representative of their calculated average:
Grading.png

Input Format

The locked stub code in your editor calls your Student class constructor and passes it the necessary arguments. It also calls the calculate method (which takes no arguments).

You are not responsible for reading the following input from stdin:
The first line contains , , and , respectively. The second line contains the number of test scores. The third line of space-separated integers describes .

Constraints




Output Format

This is handled by the locked stub code in your editor. Your output will be correct if your Student class constructor and calculate() method are properly implemented.

Sample Input

Heraldo Memelli 8135627
2
100 80
Sample Output

Name: Memelli, Heraldo
ID: 8135627
Grade: O
Explanation

This student had  scores to average:  and . The student's average grade is . An average grade of  corresponds to the letter grade , so our calculate() method should return the character'O'.
*/

class Day12Inheritance {
	init() {
		let nameAndID = readLine()!.characters.split(" ").map{String($0)}
		let _ = readLine() // score count
		let scores = readLine()!.characters.split(" ").map{Int(String($0))!}
		
		let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], identification: Int(nameAndID[2])!, scores: scores)
		
		s.printPerson()
		
		print("Grade: \(s.calculate())")
	}
}

// Class Student
class Student: Person {
	var testScores: [Int]
	
	// Write the Student class initializer
	init(firstName: String, lastName: String, identification: Int, scores: Array<Int>) {
		self.testScores = scores
		
		super.init(firstName: firstName, lastName: lastName, identification: identification)
	}
	
	
	// Write the calculate method
	func calculate() -> String {
		let c = self.testScores.reduce(0, combine: +) / self.testScores.count
		switch c {
		case 90 ... 100 :
			return "O"
		case 80 ..< 90 :
			return "E"
		case 70 ..< 80 :
			return "A"
		case 55 ..< 70 :
			return "P"
		case 40 ..< 55 :
			return "D"
		default :
			return "T"
		}
	}
	
}

// Class Person
class Person {
	var firstName: String
	var lastName: String
	var id: Int
	
	// Initializer
	init(firstName: String, lastName: String, identification: Int) {
		self.firstName = firstName
		self.lastName = lastName
		self.id = identification
	}
	
	// Print person data
	func printPerson() {
		print("Name: \(self.lastName), \(self.firstName)")
		print("ID: \(self.id)")
	}
}
