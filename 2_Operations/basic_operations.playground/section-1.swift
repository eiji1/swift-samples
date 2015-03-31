// Playground - noun: a place where people can play

func code(doSomething: () -> ()) { doSomething() }

// Arithmetic Operators
code {

	// Assignment Operator
	var a = 1
	let b = 2
	a = b
	
	1 + 5
	5 - 1
	1 * 3
	4 / 2
	5 % 3
	3 ^ 2

	// for string
	var s1 = "abc"
	var s2 = "def"
	s1 + s2
	
	// Increment and Decrement Operators
	var i = 1
	i++
	++i

	// Unary Operators
	let one = 1
	let minusOne = -one
	let plusOne = +one
	
	// Compound Assignment Operators
	i += 2
	i -= 2
	i *= 2
	i /= 2
}

// Comparison Operators
code {
	var x = 1
	var y = 2
	x == y
	x != y
	x < y
	x > y
	x <= y
	x >= y
	
	// for string
	var s1 = "abc"
	var s2 = "def"
	s1 == s2
	s1 != s2
	s1 < s2
	s1 > s2
	s1 <= s2
	s1 >= s2
}

// Logical Operators
code{
	let a = true
	let b = false
	
	// Logical NOT
	!a
	
	// Logical AND
	a && b
	
	// Logical OR
	a || b
	
	// combined
	(a || b) && b
}

// others
code{
	
	// Ternary Conditional Operator
	let takeLeft = true
	let ret = (takeLeft ? 100 : 200)
	
	// Nil Coalescing Operator
	// toto : optional
	
	// Closed Range Operator
	0...2
	for index in 1...3{
		println(index)
	}

	// Half-Open Range Operator
	// a..<b  b is not included
	for index in 1..<3{
		println(index)
	}
	
}

