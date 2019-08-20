// OBject oriented programming is a style of programming where we model information in to data structures or object.

let x1 = 0
let y1 = 0

// Need the data points to be related to each other, so use a tuple.

let coordinate1: (x: Int, y: Int) = (0,0)


coordinate1.x

// Structs - Flexible data type that allows you to group related values and model them as a unit.  an example of an custom data point. Upper Camel case as a convention. A struct can define constants or variables which we call store properties to store values.  Don't need to assign value initially.

// the struct below Point is a blue print, doesn't continue data.
struct Point {
    let x:Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    //x and y are called properties in a struct to store values, these are called stored properties
    
    ///  Returns the surrounding points in range of
    ///  the current one. Three forward slashes will tie comments to the function by pressing the option key and hovering over the function name.
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
let coordinatePoint = Point(x: 0, y: 0)



coordinatePoint.points()

// a method is any function associated with a particular object type

// Code challenge
struct User {
    let name: String
    let age: Int
}


struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)


struct Person {
    let firstName: String
    let lastName: String
    
    func getFullName() -> String {
        let fullName = "\(firstName) \(lastName)"
        return fullName
    }
}

let myPerson = Person(firstName: "Pradeep", lastName: "Chandrasekaran")
myPerson.getFullName()


struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    
    init(red: Double, green: Double, blue: Double, alpha: Double){
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        self.description = "red: \(self.red), green: \(self.green), blue: \(self.blue), alpha: \(self.alpha)."
    }
}
let fullColor = RGBColor(red: 86.0, green: 191, blue: 22, alpha: 23)

fullColor.red
print(fullColor.description)

// Rocket configuration

struct RocketConfiguration {
    let name: String = "Athena 9 Heavy"
    let numberOfFirstStageCores: Int = 3
    let numberOfSecondStageCores: Int = 1
    let numberOfStageReuseLandingLegs: Int? = nil

}


let athena9Heavy = RocketConfiguration()

struct RocketStageConfiguration {
    let propellantMass: Double
    let liquidOxygenMass: Double
    let nominalBurnTime: Int
}

extension RocketStageConfiguration {
    init(propellantMass: Double, liquidOxygenMass: Double) {
        self.propellantMass = propellantMass
        self.liquidOxygenMass = liquidOxygenMass
        self.nominalBurnTime = 180
    }
}


let stageOneConfiguration = RocketStageConfiguration(propellantMass: 119.1, liquidOxygenMass: 276.0)

stageOneConfiguration.nominalBurnTime
