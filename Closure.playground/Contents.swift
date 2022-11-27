import UIKit
import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater()  {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")

let neighbours = [angela, jack, nemo]

let neighbour1 = neighbours[0]

//if neighbours[0] is Human {
//    print("First Neighbour is a Human")
//}

// "is" == Type Checking

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish{
            print(animal.name)
            
            // "as!" == Forced Downcast
            let fish = animal as! Fish
            fish.breatheUnderWater()
            
            // "as" == Upcast
            let animalFish = fish as Animal
        }
    }
}
findNemo(from: neighbours)
//findNemo(from: neighbours)

// "as?" == not nil
//let fish = neighbours[1] as? Fish
//fish?.breatheUnderWater()

// or
if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
} else {
    print("Casting has failed")
}


