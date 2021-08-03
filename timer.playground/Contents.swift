

    var eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]

        timer.invalidate()
let hardness = eggTimes[<#Dictionary<String, Int>.Index#>]
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if eggTimes[hardness]! > 0 {
                print ("\(eggTimes[hardness]!) seconds.")
                eggTimes[hardness]! -= 1
                }
            }
        }

