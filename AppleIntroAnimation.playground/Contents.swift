//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let w : CGFloat = 500
let h : CGFloat = 200

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.1560676694, green: 0.163968116, blue: 0.2117111683, alpha: 1)

let rectPath = UIBezierPath()
let rectS : CGFloat = 150
rectPath.move(to: CGPoint(x: rectS, y: 0))
rectPath.addLine(to: CGPoint(x: rectS, y: rectS))
rectPath.addLine(to: CGPoint(x: 0, y: rectS))
rectPath.addLine(to: CGPoint(x: 0, y: 0))
rectPath.addLine(to: CGPoint(x: rectS, y: 0))
rectPath.close()
rectPath.stroke()


let dot1 = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
dot1.backgroundColor = .white
dot1.clipsToBounds = true
dot1.layer.cornerRadius = dot1.bounds.width / 2.0

PlaygroundPage.current.liveView = view


var circle: UIBezierPath!
var pathLayer: CAShapeLayer!
pathLayer.strokeEnd = CGFloat(value)
pathLayer.strokeStart = CGFloat(value - 0.25)
pathLayer = CAShapeLayer()
layer.addSublayer(pathLayer)
pathLayer.path = circle.cgPath
pathLayer.strokeColor = UIColor.yellow.cgColor
pathLayer.lineWidth = 10
pathLayer.fillColor = UIColor.clear.cgColor