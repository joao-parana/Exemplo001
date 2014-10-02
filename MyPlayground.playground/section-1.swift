// My Swift Playground

import UIKit

var str = "Hello, playground"

let EULER_NUMBER = 2.718281
let π = M_PI

for i in 1...30 {
  let j = i*i*i*5
}

println(pow(2.0, 3.0))

println("π = \(M_PI)")
for x in 0...255 {
  var factor = pow(Double(x), 1.5)
  var y = factor * sin(Double(x) * (π / 20))
}

// Initialization
// important to Safe
let sessionStarted = true
var message: String
if sessionStarted {
  message = "Session Ok"
} else {
  message = "Session Not Ok"
}
println(message)

struct Color {
  let red = 0.0, green = 0.0, blue = 0.0
  func validate() {}
  /*
  init(gray: Double) {
    // we need to initialize all properties
    self.red = gray
    self.green = gray
    self.blue = gray
    self.validate()
  }*/
}
let magenta = Color(red: 1.0, green:0.0, blue:1.0)
let black = Color() // Swift provide default Initialzer

class Car {
  var paintColor: Color
  func fillGasTank() { }
  init(color: Color) {
    self.paintColor = color
    fillGasTank()
  }
}

class RaceCar: Car {
  var hasTurbo: Bool
  var tuned: Bool = false
  override func fillGasTank() { }
  func tuneMotor() { self.tuned = true }
  override init(color: Color)  {
    self.hasTurbo = false
    // This must be called at last
    super.init(color: color)
  }
  init(color: Color, turbo: Bool)  {
    self.hasTurbo = turbo
    // This must be called at last
    super.init(color: color)
  }
}

// All Formula 1 is Tunned vehicle
class Formula1: RaceCar {
  override init(color: Color)  {
    // This must be called at last
    super.init(color: color)
    super.tuneMotor();
  }
}





