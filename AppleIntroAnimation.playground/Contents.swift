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
