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

anim.path = rectPath1.cgPath
dot1.layer.add(anim, forKey: "animate_along_path")

anim.path = rectPath2.cgPath
dot2.layer.add(anim, forKey: "animate_along_path")

anim.path = rectPath3.cgPath
dot3.layer.add(anim, forKey: "animate_along_path")

anim.path = rectPath4.cgPath
dot4.layer.add(anim, forKey: "animate_along_path")


view.addSubview(dot1)
view.addSubview(dot2)
view.addSubview(dot3)
view.addSubview(dot4)

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
a.timingFunction = CAMediaTimingFunction(name: "linear")
a.toValue = 1
a.repeatCount = Float.infinity

recLine1.add(a, forKey: "strokeEnd")
recLine2.add(a, forKey: "strokeEnd")
recLine3.add(a, forKey: "strokeEnd")
recLine4.add(a, forKey: "strokeEnd")






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
