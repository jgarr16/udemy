
func exercise() {

    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    print(stockTickers)
    stockTickers["WORK"] = "Slack Technologies Inc"
    stockTickers.updateValue("DMC Global Inc", forKey: "BOOM")


  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
    print(stockTickers)
}
 
exercise()

