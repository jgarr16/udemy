

func dayOfTheWeek(day: Int) {
    switch day {
    case 1:
//          print("Monday")
        return Monday
    case 2:
//          print("Tuesday")
        return Tuesday
    case 3:
//          print("Wednesday")
        return Wednesday
    case 4:
//          print("Thursday")
        return Thursday
    case 5:
//          print("Friday")
        return Friday
    case 6:
//          print("Saturday")
        return Saturday
    case 7:
//          print("Sunday")
        return Sunday
    default:
//          print("Error")
        return Error
    }
}

let day = Int.random(in: 1...7)
dayOfTheWeek(day: day)
