// Playground - noun: a place where people can play

func code(doSomething: () -> ()) { doSomething() }

// basic enumerations
// enumerations assign related names to integer values
enum MapDirection {
	case ToLeft
	case ToRight
}

var direction = MapDirection.ToLeft
direction = .ToLeft


switch direction {
case .ToLeft:
	println("left")
case .ToRight:
	println("right")
}

// Associated Values
// todo

// Raw Values
// todo
