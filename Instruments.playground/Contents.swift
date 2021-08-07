
// the class
class Car {
    var wheels:Int = 0
    var maxSpeed:Int = 0
    func drive()
    {
        print("VVVVrooooooooom!!!")
    }
}

let ferrari:Car = Car()
ferrari.wheels = 4
ferrari.maxSpeed = 125

let atv:Car = Car()
atv.wheels = 8
atv.maxSpeed = 45


print(type(of: ferrari))
print(ferrari.wheels)
print(ferrari.maxSpeed)


print(atv.wheels)
print(atv.maxSpeed)

ferrari.drive()
atv.drive()

