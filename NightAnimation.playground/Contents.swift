//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let w : CGFloat = 599
let h : CGFloat = 945

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0, green: 0.003921568627, blue: 0.1215686275, alpha: 1)
PlaygroundPage.current.liveView = view

//470 base dots!


let night = NightSky(frame : view.frame)
view.addSubview(night)
