//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let w : CGFloat = 500
let h : CGFloat = 200

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.1560676694, green: 0.163968116, blue: 0.2117111683, alpha: 1)
let rectS : CGFloat = 150

func makeDot(width : Double, height : Double) -> UIView{
  let newDot = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
  newDot.backgroundColor = .white
  newDot.clipsToBounds = true
  newDot.layer.cornerRadius = newDot.bounds.width / 2.0
  return newDot
}

func getPolyPoints(sides: Int, radius : Int, rotation : Double) -> [CGPoint] {
  /*
   x[n] = r * cos(2*pi*n/N)
   y[n] = r * sin(2*pi*n/N)
   where 0 <= n < N. Note that cos and sin here are working in radians, not degrees (this is pretty common in most programming languages).
   
   If you want a different centre, then just add the coordinates of the centre point to each (x[n], y[n]). If you want a different orientation, you just need to add a constant angle. So the general form is:
   
   x[n] = r * cos(2*pi*n/N + theta) + x_centre
   y[n] = r * sin(2*pi*n/N + theta) + y_centre
   */
  var result : [CGPoint] = []
  
  for i in 0..<sides{
    let x = Double(radius) * cos(2.0 * M_PI * Double(i) / Double(sides) + rotation) + Double(view.bounds.midX)
    let y = Double(radius) * sin(2.0 * M_PI * Double(i) / Double(sides) + rotation) + Double(view.bounds.midY)
    
    result.append(CGPoint(x: x, y: y))
  }
  return result
}

func createBezierPath(startingPoint : CGPoint, lineSegPoints : [CGPoint]) -> UIBezierPath{
  let newBezierPath = UIBezierPath()
  newBezierPath.move(to: startingPoint)
  for point in lineSegPoints{
    newBezierPath.addLine(to: point)
  }
  return newBezierPath
}

extension UIView {
  func addSubviews(subviews : [UIView]){
    for subview in subviews{
      self.addSubview(subview)
    }

  }
}

PlaygroundPage.current.liveView = view

let recPoints = getPolyPoints(sides: 4, radius: 50, rotation: 0.25 * M_PI)

let rectPath1 = createBezierPath(startingPoint: recPoints[0], lineSegPoints: [recPoints[1]])
let rectPath2 = createBezierPath(startingPoint: recPoints[1], lineSegPoints: [recPoints[2]])
let rectPath3 = createBezierPath(startingPoint: recPoints[2], lineSegPoints: [recPoints[3]])
let rectPath4 = createBezierPath(startingPoint: recPoints[3], lineSegPoints: [recPoints[0]])


let recDot1 = makeDot(width: 5, height: 5)
let recDot2 = makeDot(width: 5, height: 5)
let recDot3 = makeDot(width: 5, height: 5)
let recDot4 = makeDot(width: 5, height: 5)


let recAnim: CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "position")

recAnim.repeatCount = MAXFLOAT
recAnim.duration = 1.5
recAnim.timingFunction = CAMediaTimingFunction(name: "easeOut")

recAnim.path = rectPath1.cgPath
recDot1.layer.add(recAnim, forKey: "animate_along_path")

recAnim.path = rectPath2.cgPath
recDot2.layer.add(recAnim, forKey: "animate_along_path")

recAnim.path = rectPath3.cgPath
recDot3.layer.add(recAnim, forKey: "animate_along_path")

recAnim.path = rectPath4.cgPath
recDot4.layer.add(recAnim, forKey: "animate_along_path")

view.addSubviews(subviews: [recDot1, recDot2, recDot3, recDot4])


let recLine1 = CAShapeLayer()
let recLine2 = CAShapeLayer()
let recLine3 = CAShapeLayer()
let recLine4 = CAShapeLayer()

view.layer.addSublayer(recLine1)
view.layer.addSublayer(recLine2)
view.layer.addSublayer(recLine3)
view.layer.addSublayer(recLine4)
var a = CABasicAnimation(keyPath: "strokeEnd")

recLine1.path = rectPath1.cgPath
recLine1.strokeColor = UIColor.black.cgColor
recLine1.lineWidth = 2
recLine1.fillColor = UIColor.clear.cgColor
recLine1.lineCap = "round"

recLine2.path = rectPath2.cgPath
recLine2.strokeColor = UIColor.black.cgColor
recLine2.lineWidth = 2
recLine2.fillColor = UIColor.clear.cgColor
recLine2.lineCap = "round"

recLine3.path = rectPath3.cgPath
recLine3.strokeColor = UIColor.black.cgColor
recLine3.lineWidth = 2
recLine3.fillColor = UIColor.clear.cgColor
recLine3.lineCap = "round"

recLine4.path = rectPath4.cgPath
recLine4.strokeColor = UIColor.black.cgColor
recLine4.lineWidth = 2
recLine4.fillColor = UIColor.clear.cgColor
recLine4.lineCap = "round"

a.duration = 1.5
a.fromValue = 0
a.timingFunction = CAMediaTimingFunction(name: "easeOut")
a.toValue = 1
a.repeatCount = Float.infinity

recLine1.add(a, forKey: "strokeEnd")
recLine2.add(a, forKey: "strokeEnd")
recLine3.add(a, forKey: "strokeEnd")
recLine4.add(a, forKey: "strokeEnd")


// Hexagon

// Get the six points
let hexPoints = getPolyPoints(sides: 6, radius: 50, rotation: 0.5 * M_PI)

let hexPath1 = UIBezierPath()
hexPath1.move(to: hexPoints[0])
hexPath1.addLine(to: hexPoints[1])
hexPath1.addLine(to: hexPoints[2])

let hexPath2 = UIBezierPath()
hexPath2.move(to: hexPoints[2])
hexPath2.addLine(to: hexPoints[3])
hexPath2.addLine(to: hexPoints[4])

let hexPath3 = UIBezierPath()
hexPath3.move(to: hexPoints[4])
hexPath3.addLine(to: hexPoints[5])
hexPath3.addLine(to: hexPoints[0])

let hexDot1 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
hexDot1.backgroundColor = .white
hexDot1.clipsToBounds = true
hexDot1.layer.cornerRadius = hexDot1.bounds.width / 2.0

let hexDot2 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
hexDot2.backgroundColor = .white
hexDot2.clipsToBounds = true
hexDot2.layer.cornerRadius = hexDot2.bounds.width / 2.0

let hexDot3 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
hexDot3.backgroundColor = .white
hexDot3.clipsToBounds = true
hexDot3.layer.cornerRadius = hexDot3.bounds.width / 2.0

let hexAnim: CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "position")

hexAnim.repeatCount = MAXFLOAT
hexAnim.duration = 1.5
hexAnim.timingFunction = CAMediaTimingFunction(name: "easeOut")

hexAnim.path = hexPath1.cgPath
hexDot1.layer.add(hexAnim, forKey: "animate_along_path")

hexAnim.path = hexPath2.cgPath
hexDot2.layer.add(hexAnim, forKey: "animate_along_path")

hexAnim.path = hexPath3.cgPath
hexDot3.layer.add(hexAnim, forKey: "animate_along_path")

view.addSubview(hexDot1)
view.addSubview(hexDot2)
view.addSubview(hexDot3)

// Create 3 BeizierPaths
// Throw some dots on and then animate the line similar to the rect.
// When completed increase size and decrease alpha


let hexLine1 = CAShapeLayer()
let hexLine2 = CAShapeLayer()
let hexLine3 = CAShapeLayer()

view.layer.addSublayer(hexLine1)
view.layer.addSublayer(hexLine2)
view.layer.addSublayer(hexLine3)

var b = CABasicAnimation(keyPath: "strokeEnd")

hexLine1.path = hexPath1.cgPath
hexLine1.strokeColor = UIColor.black.cgColor
hexLine1.lineWidth = 2
hexLine1.fillColor = UIColor.clear.cgColor
hexLine1.lineCap = "round"

hexLine2.path = hexPath2.cgPath
hexLine2.strokeColor = UIColor.black.cgColor
hexLine2.lineWidth = 2
hexLine2.fillColor = UIColor.clear.cgColor
hexLine2.lineCap = "round"

hexLine3.path = hexPath3.cgPath
hexLine3.strokeColor = UIColor.black.cgColor
hexLine3.lineWidth = 2
hexLine3.fillColor = UIColor.clear.cgColor
hexLine3.lineCap = "round"



b.duration = 1.5
b.fromValue = 0
b.timingFunction = CAMediaTimingFunction(name: "easeOut")
b.toValue = 1
b.repeatCount = Float.infinity

hexLine1.add(b, forKey: "strokeEnd")
hexLine2.add(b, forKey: "strokeEnd")
hexLine3.add(b, forKey: "strokeEnd")



