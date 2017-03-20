//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let w : CGFloat = 500
let h : CGFloat = 200

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.1560676694, green: 0.163968116, blue: 0.2117111683, alpha: 1)
let rectS : CGFloat = 150


let rectPath1 = UIBezierPath()
rectPath1.move(to: CGPoint(x: rectS, y: 0))
rectPath1.addLine(to: CGPoint(x: rectS, y: rectS))

let rectPath2 = UIBezierPath()
rectPath2.move(to: CGPoint(x: rectS, y: rectS))
rectPath2.addLine(to: CGPoint(x: 0, y: rectS))

let rectPath3 = UIBezierPath()
rectPath3.move(to: CGPoint(x: 0, y: rectS))
rectPath3.addLine(to: CGPoint(x: 0, y: 0))

let rectPath4 = UIBezierPath()
rectPath4.move(to: CGPoint(x: 0, y: 0))
rectPath4.addLine(to: CGPoint(x: rectS, y: 0))


let dot1 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
dot1.backgroundColor = .white
dot1.clipsToBounds = true
dot1.layer.cornerRadius = dot1.bounds.width / 2.0

let dot2 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
dot2.backgroundColor = .white
dot2.clipsToBounds = true
dot2.layer.cornerRadius = dot1.bounds.width / 2.0

let dot3 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
dot3.backgroundColor = .white
dot3.clipsToBounds = true
dot3.layer.cornerRadius = dot1.bounds.width / 2.0

let dot4 = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
dot4.backgroundColor = .white
dot4.clipsToBounds = true
dot4.layer.cornerRadius = dot1.bounds.width / 2.0

PlaygroundPage.current.liveView = view

let anim: CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "position")

anim.repeatCount = MAXFLOAT
anim.duration = 1.5
anim.timingFunction = CAMediaTimingFunction(name: "easeOut")

anim.path = rectPath1.cgPath
dot1.layer.add(anim, forKey: "animate_along_path")

anim.path = rectPath2.cgPath
dot2.layer.add(anim, forKey: "animate_along_path")

anim.path = rectPath3.cgPath
dot3.layer.add(anim, forKey: "animate_along_path")

anim.path = rectPath4.cgPath
dot4.layer.add(anim, forKey: "animate_along_path")


//view.addSubview(dot1)
//view.addSubview(dot2)
//view.addSubview(dot3)
//view.addSubview(dot4)

let recLine1 = CAShapeLayer()
let recLine2 = CAShapeLayer()
let recLine3 = CAShapeLayer()
let recLine4 = CAShapeLayer()

//view.layer.addSublayer(recLine1)
//view.layer.addSublayer(recLine2)
//view.layer.addSublayer(recLine3)
//view.layer.addSublayer(recLine4)
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

//recLine1.add(a, forKey: "strokeEnd")
//recLine2.add(a, forKey: "strokeEnd")
//recLine3.add(a, forKey: "strokeEnd")
//recLine4.add(a, forKey: "strokeEnd")


// Hexagon
func getPolyPoints(sides: Int, radius : Int) -> [CGPoint] {
  var result : [CGPoint] = []
  
  /*
   x[n] = r * cos(2*pi*n/N)
   y[n] = r * sin(2*pi*n/N)
   where 0 <= n < N. Note that cos and sin here are working in radians, not degrees (this is pretty common in most programming languages).
   
   If you want a different centre, then just add the coordinates of the centre point to each (x[n], y[n]). If you want a different orientation, you just need to add a constant angle. So the general form is:
   
   x[n] = r * cos(2*pi*n/N + theta) + x_centre
   y[n] = r * sin(2*pi*n/N + theta) + y_centre
   */
  
  for i in 0..<sides{
    let x = Double(radius) * cos(2.0 * M_PI * Double(i) / Double(sides) + (0.5 * M_PI)) + Double(view.bounds.midX)
    let y = Double(radius) * sin(2.0 * M_PI * Double(i) / Double(sides) + (0.5 * M_PI)) + Double(view.bounds.midY)
    
    result.append(CGPoint(x: x, y: y))
  }
  return result
}

// Get the six points
let hexPoints = getPolyPoints(sides: 6, radius: 50)

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
hexDot1.layer.add(anim, forKey: "animate_along_path")

hexAnim.path = hexPath2.cgPath
hexDot2.layer.add(anim, forKey: "animate_along_path")

hexAnim.path = hexPath3.cgPath
hexDot3.layer.add(anim, forKey: "animate_along_path")

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



//var circle: UIBezierPath!
//var pathLayer: CAShapeLayer!
//pathLayer.strokeEnd = CGFloat(value)
//pathLayer.strokeStart = CGFloat(value - 0.25)
//pathLayer = CAShapeLayer()
//layer.addSublayer(pathLayer)
//pathLayer.path = circle.cgPath
//pathLayer.strokeColor = UIColor.yellow.cgColor
//pathLayer.lineWidth = 10
//pathLayer.fillColor = UIColor.clear.cgColor
