let x1 = 0
let y1 = 0

// Need the data points to be related to each other, so use a tuple.

let coordinate1: (x: Int, y: Int) = (0,0)


coordinate1.x

// Structs - an example of an custom data point. Upper Camel case as a convention. A struct can define constants or variables which we call store properties to store values.  Don't need to assign value initially.

// the struct below Point is a blue print, it doesn't contain data. A structure can define stored properties to encapulate data.  A function associated with a custom data type is called a method.  we cant used the struct unless we creat an instance of the struct.  we use a memberwise initializer method that assigns values to each of the stored properites.
struct Point {
    let x:Int
    let y: Int
    
    //Initializer method
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    ///  Returns the surrounding points in range of
    ///  the current one.
    func points(inRange range: Int = 1) -> [Point]{
        var results: [Point] = []
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange{
            
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }}
        
        return results
    }
}



// Creating an INSTANCE of the struct. Special sort of function.
let coordinatePoint = Point(x: 1, y: 1)

// Call the Method
coordinatePoint.points()

//Enemies
class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}
class SuperEnemy: Enemy {
    let isSuper: Bool = true
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
    }
    


let enemy = Enemy(x: 0, y: 0)

enemy.life
enemy.position

// Towers
class Tower{
    let position: Point
    var range: Int = 1
    var strength: Int
    
    init(x: Int, y: Int, strength: Int) {
        self.position = Point(x: x, y: y)
        self.strength = strength
    }
    
    func fire(at enemy: Enemy)  {
        if isInRange(of: enemy){
            enemy.decreaseLife(by: strength)
            print("Gotcha")
        } else {
            print("Darn out of range")
        }
    }
    
    // helper method
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions{
            if point.x == enemy.position.x && point.y == enemy.position.y{
                return true
            }
        }
                return false
    }
}

let firstTower = Tower(x: 2, y: 2, strength: 2)
let firstEnemy = Enemy(x: 0, y: 0)
// class that inherits is called the subclass, the class which gives is called the superclass or baseclass
let superenemy = SuperEnemy(x: 1, y: 1)
firstTower.fire(at: firstEnemy)

struct User {
    let name: String
    let age: Int
}
// Code challenge

struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)


struct Person {
    let firstName: String
    let lastName: String
    
    func fullName() -> String {
        let name = ("\((firstName)) \((lastName))")
        
        return name
    }
 }


let aPerson = Person(firstName: "David", lastName: "Daniels")


let myFullName = aPerson.fullName()


func percentOversizing(S3Implant s3: Int, annularArea: Double) -> Double {
    var oversizedPercent: Double = 0.0
    let valveSize:Int = s3
    
    switch s3 {
    case 29:
        oversizedPercent = 100 - (annularArea/649) * 100
    case 26:
        oversizedPercent = 100 - (annularArea/531) * 100
    case 23:
        oversizedPercent = 100 - (annularArea/415)  * 100
    default:
        print()
        }
    return oversizedPercent
    
}



percentOversizing(S3Implant: 23, annularArea: 415)



// Code challenge

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String

    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = red
        self.green = 191.0
        self.blue = 131.0
        self.alpha = 1.0
        self.description = "red: \((red)), green: \((green)), blue: \((blue)), alpha: \((alpha))"
    }

}

var myRGB = RGBColor(red: 80, green: 190, blue: 130, alpha: 0.9)

print(myRGB)

// Code Challenge

class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }

}

let someShape = Shape(numberOfSides: 4)

someShape.numberOfSides


// Code challenge

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, location: Location) {
        self.name = name
        self.location = location
    }
}


let location = Location(latitude: 23, longitude: 35 )
let someBusiness = Business(name: "cheese board", location: location)
