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
}

// Creating an INSTANCE of the struct. Special sort of function.
let coordinatePoint = Point(x: 0, y: 0)



struct User {
    let name: String
    let age: Int
}
// Code challenge

