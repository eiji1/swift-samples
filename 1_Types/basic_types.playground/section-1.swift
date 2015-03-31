// Playground - noun: a place where people can play

func code(doSomething: () -> ()) { doSomething() }


// commnets
/* 
  multiline comments
*/

// declaration of variables and constants
code {
	let constant = 0
	// constant = 1 // compile-time error
	var variable = 1.0
	variable = 2.0
	
	// types are inferred automatically
}

// Type Annotation
// explicitly specified types of variables
code{
	
	var d :Double = 1.0
	var x, y, z :Double
	
}

// fundamental types
code{
	//----------------//
	// Integers
	var x = 24
	
	// signed integers
	var a :Int = -1
	// unsigned integers
	var b :UInt = 1
	// var b :UInt = -1 // error
	
	// Bounds
	var maxOfInt = Int.max
	var minOfInt = Int.min
	var maxOfUInt = UInt.max
	
	// 8 bit integer
	var a8: UInt8 = 255
	
	//----------------//
	// Floating-Point Numbers
	var y = 11.03
	
	// Double : a 64-bit floating-point number
	var d :Double = 0.0
	// Float : a 32-bit floating-point number
	var f :Float = 0.0

	//----------------//
	// booleans
	let booleanValue0 = true
	let booleanValue1 = false
	
	//----------------//
	// Numeric Literals
	
	// binary notation
	let bin = 0b111
	// octal notation
	let oct = 0o111
	// hexadecimal notation
	let hex = 0x111
	
	// exponent
	let e1 = 3.25e2
	let e2 = 3.25e-2
	
}

// Printing
code {
	println("hello world")
	
	// string interpolation
	var x = 100
	println("x = \(x)")
}

// String types
code{
	// declaration
	var str = "swift"
	
	// empty string
	var empty = ""
	empty = String()
	empty.isEmpty
	
	// charactor
	var ch :Character = "c"
	for charactor in str {
		println(charactor)
	}
	
	// Concatenating Strings
	let s1 = "sw"
	let s2 = "ift"
	var s3 = s1 + s2
	s3 += s1
	
	// append charator
	let c4:Character = "i"
	s3.append(c4)
	
	// String Interpolation
	let pi = 3.141592
	let text = "pi = \(pi). 2 * pi = \(pi * 2)."
	
	// Comparing Strings
	s1 == s2
	
	// Prefix and Suffix Equality
	
	text.hasPrefix("pi")
	text.hasSuffix("pi")
	
	// Unicode Representations of Strings
	str = "abc"
	str.utf8
	str.utf16
	str.unicodeScalars
}

// Semicolons
var abc = 0 ; var def = 1

// Numerical type conversion
code {
	
	let a = 1
	let b = 2.1
	
	// let c = a + b // error
	let c = Double(a) + b
	let d = Int(b)
}

// Tuple Type
code{
	
	// tuple of doubles
	var a = (1.0, 2.0)
	
	// tuple of Strings
	var b = ("ABC", "DEF")
	
	// different types
	var c = (1, "a")
	
	// access elements
	let (first, second) = a
	first
	second
	
	// ignore some parts
	let (wanted, _) = a
	wanted
	
	// name each element
	let myTuple = (firstElement: 123, SecondElement: "abc")
	myTuple.firstElement
	myTuple.SecondElement
}


// Array Type
code {
	
	var a = [1, 2, 3]
	var b = [2, 5, 8]
	var s = ["AB", "CD"]
	// explicitly
	let ary: Array<Int>  = [1, 2, 3]
	let strings: [String] = ["AB", "CD", "EF"]
	
	// accessing elements
	var first  = a[0]
	var second = a[1]
	
	// Creating and Initializing an Array
	a = [Int]()
	a.count
	
	var fiveZeros = [Int](count: 5, repeatedValue: 0)
	
	// empty array
	a = []
	a.isEmpty
	
	// append an element
	a.append(100)
	
	// concatenating arrays
	var c = a + b
	a += [200, 300, 400]
	
	// a range of values
	a[1...3]
	a[1...3] = [2000, 3000]
	a
	
	// insert and remove elements
	a.insert(999, atIndex: 2)
	var r = a.removeAtIndex(2)
	a
	
	r = a.removeLast()
	a
	
	// Iterating Over an Array
	for value in a {
		print(value)
	}
	for (index, value) in enumerate(a) {
		"\(index), \(value)"
	}
	
	// 2d arrays
	var array2d = [[1, 2], [3, 4], [5, 6]]
	array2d[0][0]
	array2d[0][1]
	array2d[1][0]
	array2d[1][1]
	array2d[2][0]
	array2d[2][1]
	
}

// Dictionary Types
code {
	
	var dict = ["a": 1, "b": 2]
	dict.count
	
	// empty
	dict = [String: Int]()
	dict.isEmpty
	
	// explicitly
	let dict2: [String:Int]  = ["a": 1, "b": 2, "c": 3]
	let dict3: Dictionary<String, Int> = ["a": 1, "b": 2]
	
	// Accessing and Modifying a Dictionary
	dict = dict2
	var exist = dict["a"]
	var nonExist = dict["none"]
	
	dict["a"] = 555
	dict
	// remove key value pair
	dict["a"] = nil
	dict.removeValueForKey("b")
	dict
	
	// Iterating Over a Dictionary
	for (key, value) in dict2{
		"\(key), \(value)"
	}
	
	for key in dict2.keys {
		"\(key)"
	}
	
	for value in dict2.values {
		"\(value)"
	}
	
	// empty dictionary again, if already type has known
	dict = [:]
	dict
}

// Function Type
code {
	
	func myFunc(i: Int) -> Bool{ return i == 0 }
	
	let f: Int -> Bool = myFunc
	
}

// Type Identifier
code{
	
	typealias Point = (Int, Int)
	var p :Point = (1, 1)

	// todo 
	// types declared in other modules
}




