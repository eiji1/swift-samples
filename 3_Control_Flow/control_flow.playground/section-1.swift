// Playground - noun: a place where people can play

func code(doSomething: () -> ()) { doSomething() }

//--------------------------------------------//
// if 
let condition = true
if condition {
	println("statements") // executed
}

if condition {
	println("statements")
}
else{
	
}

let anotherCondition = false
if condition {
	println("statements") // executed
}
else if anotherCondition {
	println("statements2")
}
else {
	
}

//--------------------------------------------//
// Switch
var value = 1

switch value {
case 0:
	println("statements")
case 1, 2: // multiple elements OK
	println("statements2")
default:
	println("otherwise")
}

// Interval Matching
switch value {
case 1...5:
	println("statements")
case 5...10:
	println("statements2")
default:
	println("otherwise")
}

// Tuples
// todo

// Value Bindings
// todo

// Where
// todo

// write multiple line
switch value {
case 0:
	println("statements")
case 1,
2:
	println("statements2")
default:
	println("otherwise")
}

// do not need explicit break
switch value {
case 1:
	println("statements")
	// break not necessary, entire switch statement finishes here
case 2, 3:
	println("statements2")
	// break not necessary
default:
	println("otherwise")
}

// fallthrough
switch value {
case 1:
	println("statements")
	fallthrough // go to next condition
case 1:
	println("statements2")
case 1: // not compared
	println("statement3")
default:
	println("otherwise")
}

//--------------------------------------------//
// for loops

for index in 1...3 { // including 3
	println("\(index)")
}

// each value is not necessary
for _ in 1...3 {
	println("statements")
}

// array elements
let array = [1, 2, 3]
for value in array {
	println("\(value)")
}

// dictionary
let dict = ["a": 1, "b": 2]
for (key, value) in dict {
	println("\(key), \(value)")
}

// charactor
let str = "abc"
for ch in str {
	println(ch)
}

// traditional C-style
for var index = 0; index < 10; ++index {
	println("\(index)")
}

//--------------------------------------------//
// while

let condition2 = false

while condition2 {
	// statements
	println("statements")
}

do{
	// statements
	println("statements") // executed at least once
}while condition2

//--------------------------------------------//
// continue, break, return

var count = 0
thisLoop: while true {
	if count == 0 {
		println("statement0")
		count++
		continue thisLoop // skip this turn and continue this loop
	}
	if count > 5 {
		break thisLoop // exit this loop
		// return something // return 1 and exit function
	}
	count++
}




