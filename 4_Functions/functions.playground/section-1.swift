// Playground - noun: a place where people can play

func code(doSomething: () -> ()) { doSomething() }

// Defining and Calling Functions
code {
	
	// basic function
	func add(a: Int, b: Int) -> Int {
		return a + b
	}

	add(1,3)

	// Functions Without Parameters
	func takeNoParams() -> Int {
		return 0
	}

	takeNoParams()

	// Functions Without Return Values
	func returnNothing(x: Int) {
		println("return nothing")
	}

	returnNothing(1000)

	// Functions with Multiple Return Values
	func returnMultipleValues() -> (left: Int, right: Int) {
		var a = 100
		var b = 200
		return (a, b)
	}

	returnMultipleValues()

	// Optional Tuple Return Types
	// todo optional

	// External Parameter Names
	func putValue(ofExternalX internalX: Int) -> Int {
		return internalX + 1
	}

	putValue(ofExternalX: 3)

	// Shorthand External Parameter Names
	// todo

	// Default Parameter Values
	func funcOnlyDefault(x: Int = 100) -> Int{
		return x
	}
	funcOnlyDefault(x: 9)
	funcOnlyDefault()

	func funcWithDefault(x: Int, y: Int = 100) -> (Int,Int){
		return (x, y)
	}

	funcWithDefault(9)
	funcWithDefault(9, y: 9999)
	// funcWithDefault(9, 9999) // error

	// Variadic Parameters
	func sum(numbers: Int...) -> Int {
		var sum = 0
		for number in numbers {
			sum += number
		}
		return sum
	}

	sum(1, 2, 3, 4)


} // end code


// Constant and Variable Parameters
code {

	let a = 10
	var b = 20
	func add(constant: Int, var variable: Int) -> Int {
		// constant += 1 // error
		variable += 1 // OK
		return constant + variable - 1
	}
	add(a, b)
}



// In-Out Parameters
code {
	
	let a = 10
	var b = 20
	func addAndStoreRight(left: Int, inout right: Int) {
		right += left
		// outcome is stored at inout param
	}
	// inout param b have to be prefixed with an ampersand
	addAndStoreRight(a, &b)
	b
	
}

// Function Types
code {
	
	func add(a: Int, b: Int) -> Int {
		return a + b
	}
	func subtract(a: Int, b: Int) -> Int {
		return a - b
	}
	// function type is (Int, Int) -> Int
	var myFunc: (Int, Int) -> Int = add
	myFunc(1, 2)
	myFunc = subtract
	myFunc(1, 2)

	// function type as parameter
	func doCalculation(a: Int, b: Int, f: (Int, Int) -> Int) -> Int {
		return f(a, b)
	}
	doCalculation(1, 5, add)
	doCalculation(3, 5, subtract)
	
	func getFunc(index: Int) -> (Int, Int) -> Int {
		if index == 0 {
			return add
		}
		return subtract
	}
	myFunc = getFunc(0)
	myFunc(3, 4)
	
}

// 	Nested Functions
code {
	
	func nestedFunc0() -> Int {
		func nestedFunc1() -> Int {
			func nestedFunc2() -> Int {
				return 0
			}
			return nestedFunc2()
		}
		return nestedFunc1()
	}
	nestedFunc0()
	
}

