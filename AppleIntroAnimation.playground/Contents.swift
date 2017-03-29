//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


let w : CGFloat = 500
let h : CGFloat = 200

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.1560676694, green: 0.163968116, blue: 0.2117111683, alpha: 1)
PlaygroundPage.current.liveView = view

let square = animatedShape(shape: .square, frame: CGRect(x: 0, y: 0, width: 100, height: 100), delay: 0.0)
square.center = view.center
view.addSubview(square)

let hexagon = animatedShape(shape: .hexagon, frame: CGRect(x: 0, y: 0, width: 100, height: 100), delay: 1.5)
hexagon.center = view.center
view.addSubview(hexagon)

let circle = animatedShape(shape: .circle, frame: CGRect(x: 0, y: 0, width: 100, height: 100), delay: 3.0)
circle.center = view.center
view.addSubview(circle)






