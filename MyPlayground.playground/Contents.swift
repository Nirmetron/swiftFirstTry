import Foundation

//basic stuff

//let MyName = "Eldar"
//let YourName = "Pepis"
//var someName = "Yuily"
//
//
//var names = [MyName, YourName]
//
//names.append("Baz")
//names.append("Buzz")
//
//func printName(_ x:String){
//    print(x);
//}
//printName(MyName.uppercased())
//YourName

let add: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    a + b
}

let addStr: (String, String) -> String = {(a:String, b:String) -> String in
    a + " " + b
}

add(10,40)
addStr("Pepis", "Popis")

let myAge = 17
let yourAge = 22

if myAge > yourAge {
    print("Win")
} else {
    print("lose")
}

//generic types

func addValues<N: Numeric> (_ a:N, _ b:N) -> N {
    a+b;
}

addValues(1, 2)
addValues(1.1, 2.2)

//Hashable and enumarable

struct House: Hashable {
    let number: Int
    let residents:Int
    let address: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    
    static func == (
        lhs:Self,
        rhs:Self) -> Bool {
            lhs.number == rhs.number
        }
}

//and a little of collections

let House1 = House(number: 1, residents: 4, address: "Pepis street")
let HouseFake = House(number: 1, residents: 6, address: "Fake address")
let House2 = House(number: 2, residents: 2, address: "Putis street")

let Houses = Set([House1,House2,HouseFake])
Houses.count;
//poggers it works
