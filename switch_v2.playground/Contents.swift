import Foundation

public class Day {
    public init() {}
    public func dayOfTheWeek(day: Int) -> String {
        let dayName = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Error"]
        switch day {
        case 0:
            return dayName[0]
        case 1:
            return dayName[1]
        case 2:
            return dayName[2]
        case 3:
            return dayName[3]
        case 4:
            return dayName[4]
        case 5:
            return dayName[5]
        case 6:
            return dayName[6]
        default:
            return dayName[7]
        }
    }
}

let day = Day()
let randDay = day.dayOfTheWeek(day: Int.random(in: 1...7))
print(randDay)
