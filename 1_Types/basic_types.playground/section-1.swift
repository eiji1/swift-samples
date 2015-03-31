// Playground - noun: a place where people can play

func code(doSomething: () -> ()) { doSomething() }

// fundamental types
code{
	
	// numbers
	var x = 0
	var y = 0.0

	// strings
	var str = "abc"
	
}

// Type Annotation

// explicitly specified types of variables
code{
	
	var d :Double = 1.0
	
}

// Tuple Type
code{
	
	// tuple of doubles
	var a = (1.0, 2.0)
	
	// tuple of Strings
	var b = ("ABC", "DEF")
	
	// different types
	var c = (1, "a")
	
}

// Array Type
code {
	
	var a = [1, 2, 3]
	var s = ["AB", "CD"]
	// explicitly
	let ary: Array<Int>  = [1, 2, 3]
	let strings: [String] = ["AB", "CD", "EF"]
	
	// accessing elements
	var first  = a[0]
	var second = a[1]
	
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
	
	// explicitly
	let dict2: [String:Int]  = ["a": 1, "b": 2]
	let dict3: Dictionary<String, Int> = ["a": 1, "b": 2]
	
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




