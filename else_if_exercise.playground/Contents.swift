
var aYear: Int = 1300 // Int.random(in: 1950...2021)
// print(aYear)

if ((aYear % 400) == 0) {
    print("YES 400")
} else if ((aYear % 100) == 0) {
    print("NO 100")
} else if ((aYear % 4) == 0) {
    print("YES 4")
} else { print("NO") }


