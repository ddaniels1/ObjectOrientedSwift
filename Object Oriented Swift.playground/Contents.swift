let x1 = 0
let y1 = 0

// Need the data points to be related to each other, so use a tuple.

let coordinate1: (x: Int, y: Int) = (0,0)


coordinate1.x

// Structs - an example of an custom data point. Upper Camel case as a convention. A struct can define constants or variables which we call store properties to store values.  Don't need to assign value initially.

// the struct below Point is a blue pring, doesn't continue data.
struct Point {
    let x:Int
    let y: Int
    
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

Point(x: 1, y: 2)

// Creating an INSTANCE of the struct. Special sort of function.
let coordinatePoint = Point(x: 0, y: 0)

coordinatePoint.points()

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
    
    func fullName() -> Person {
        var nameOfPerson: Person = []
        
        
        return nameOfPerson
        
    }
}
