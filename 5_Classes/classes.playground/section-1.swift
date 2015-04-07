
//-----------------------------------//
// struct
struct MyPoint {
	
	// variable property
	var x = 0
	
	// constant property
	let y = 0
}


// Instances
var point = MyPoint()

// Accessing Stored Properties
point.x = 10

// error: unable to change constant property
// point.y = 10

// struct initialization
point = MyPoint(x: 5, y: 5)

// struct is a value type
var p1 = MyPoint(x:10, y:10)
var p2 = p1  // values are copied
p1.x = 1     // if change p1
p2           // p2 not affected


// type property (belongs to type itself, independent of instances)
struct Card{
	static var name = "my cards" // variable
	static let numCards = 12     // constant
	var number = 1
}
Card.name
Card.numCards
var card = Card()
// card.numCards // error

// computed property
struct MyPoint2 {
	var x = 0
	
	// Computed property (actually not stored) with getter and setter
	var negative : Int {
		get {
			return -x
		}
		set(negative) {
			x = -negative
		}
	}
}

var q1 = MyPoint2(x:4)
q1.negative
q1.negative = 8

// basically struct is not changed its properties but if modifying struct type
// use 'mutating' function
struct MyPoint3 {
	var x = 0
	var y = 0
	var z = 0
	
	mutating func fixZ(z:Int) {
		self.z = z
	}
	
	mutating func replaceBy(x inernalX :Int, y internalY:Int) {
		self = MyPoint3(x:inernalX,y:internalY,z:0)
	}
}

var p3 = MyPoint3()
p3.fixZ(1)
p3.replaceBy(x:3, y:5)


//-----------------------------------//
// class 

// declaration
class Apple {
	
	// properties
	
	// stored property
	var size = 10
	let color = "white"  // constant property, impossible to change

	// methods
	
	// initializer
	//init(size:Int) {
	//	self.size = size
	//}
	
	init(size:Int, color:String = "green") { // '= "green"': a default parameter
		self.size = size // self indicates the property of this class
		self.color = color
	}
	
	// local and external parameter names
	func grow(rate: Int) {
		self.size *= rate
	}

	// type method (callable on this type itself and independent of instances)
	class func getClassName() -> String {
		return "Apple"
	}
	
}

// instantiation (default parameter)
var apple = Apple(size:5)
apple = Apple(size:15)

// constant instance
let const_apple = Apple(size: 10, color:"red")

// method call
apple.grow(2)

// type method
Apple.getClassName()

// class is a reference type
var a1 = Apple(size:99)
var a2 = a1   // reference is copied
a1.size = 10  // if changing one of variable
a2.size       // the other will be affected


// special methods
class Book {
	
	// subscripts (making a class enable to use subscript feature)
	var data = ["abc", "def", "ghi"]
	// subscript (read-write)
	subscript(index:Int) -> String {
		get{
			return data[index]
		}
		set(value){
			data[index] = value
		}
	}
	
	// read only subscript, multiple parameters
	subscript(chapter: Int, page:Int) -> (Int,Int) {
		return (chapter, page)
	}
	
	// nested class
	class BookLoader {
		var id = 100
		
		init(){
			// check when book loader is created
			print("BookLoader was created.")
		}
	}
	
	// lazy stored property
	lazy var loader = BookLoader()
	
}

// subscripts
var book = Book()
book[0]
book[1, 10]
// BookLoader instance has not been created here

var checkBookLoaderCreated = false
if checkBookLoaderCreated {
	// BookLoader instance is created here for the first time
	book.loader.id
}

// access control

// module accessible class
class ClassInModule {
	
	internal var explicitInternalProperty = 0
	var implicitInternalproperty = 1
	private var privateProperty = 2
	// warning : public property or method in internal class
	// public var publicProperty = 3
	
	internal func explicitInternalMethod(){}
	func implicitInternalMethod(){}
	private func privateMethod(){}
}

// public class
public class PublicClass {
	
	var internalproperty = 1
	private var privateProperty = 2
	public var publicProperty = 3
	
	func internalMethod(){}
	private func privateMethod(){}
	public func publicMethod(){}
}

// private class
private class PrivateClass {
	var implicitPrivateproperty = 1
	private var explicitPrivateProperty = 2
	
	func implicitPrivateMethod(){}
	private func explicitPrivateMethod(){}
}


//----------------------------------------------//
// class inheritance

// base class
class Game {
	var id = 0
	
	// constructor
	init() {
		id = 10
	}
	
	func getName() -> String {
		return "game"
	}
	
	// preventing overrides
	final func getId() -> Int {
		return id
	}
}

// subclass class
class BoardGame : Game {
	
	// error :cannot override stored property
	// override var id = 0
	
	// overriding constructor
	override init() {
		// error : cannot use base class property before calling super.init
		// id = 20
		
		// initialize base class
		super.init()
		id = 20
	}

	// overriding methods
	override func getName() -> String {
		return "board game"
	}
	
	// call base class method or property
	func getBaseClassName() -> (String, Int) {
		var name = super.getName()
		return (name, id)
	}
	
	// error: unable to overriding
	//override func getId() ->Int {
	//	return id
	//}
}

final class Chess : BoardGame {
	// overriding methods
	override func getName() -> String {
		return "chess"
	}
}


// error : cannot override 'final class'
// class OnlineChess : Chess {
// }

var game = Game()
var boardGame = BoardGame()
var chess = Chess()

// override methods
game.getName()
boardGame.getName()
chess.getName()

// base class method
boardGame.getBaseClassName()



