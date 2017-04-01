//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import PlaygroundSupport

let background = #colorLiteral(red: 0.1560676694, green: 0.163968116, blue: 0.2117111683, alpha: 1)
let blue = #colorLiteral(red: 0.008550111204, green: 0.6733478904, blue: 0.6374569535, alpha: 1)
let red = #colorLiteral(red: 0.8803832531, green: 0.2371731997, blue: 0.2013332248, alpha: 1)
let orange = #colorLiteral(red: 0.8292843103, green: 0.5515872836, blue: 0.3600230813, alpha: 1)
let purple = #colorLiteral(red: 0.7077464461, green: 0.2335175574, blue: 0.6035909653, alpha: 1)
let green = #colorLiteral(red: 0.5861430168, green: 0.778504312, blue: 0.4401960969, alpha: 1)

let HEIGHT : Double = 945
let WIDTH : Double = 599

let view = UIView(frame: CGRect(x: 0, y: 0, width: WIDTH, height: HEIGHT))
view.backgroundColor = background
PlaygroundPage.current.liveView = view
PlaygroundPage.current.needsIndefiniteExecution = true


//Height of lines is 15
// Shift is 7 px then 8 then 7 then 8
// 7, 15 ,22, 30
let startingPointPercent : CGFloat = 1156.0 / 2208.0
let heightOfLine : CGFloat = (15.0 / 2208.0) * view.frame.height
let shift1 : CGFloat = (7.0 / 2208.0) * view.frame.height
let shift2 : CGFloat = (8.0 / 2208.0) * view.frame.height
let startingPoint = view.frame.height * startingPointPercent
let startingWidth = (40.0 / 2208.0) * view.frame.width

let blueLine = UIView(frame: CGRect(x: 0, y: startingPoint, width: startingWidth, height: heightOfLine))
let redLine = UIView(frame: CGRect(x: 0, y: startingPoint + heightOfLine + shift1, width: startingWidth, height: heightOfLine))
let orangeLine = UIView(frame: CGRect(x: 0, y: startingPoint + (heightOfLine * 2) + shift1 + shift2, width: startingWidth, height: heightOfLine))
let purpleLine = UIView(frame: CGRect(x: 0, y: startingPoint + (heightOfLine * 3) + (shift1 * 2) + shift2, width: startingWidth, height: heightOfLine))
let greenLine = UIView(frame: CGRect(x: 0, y: startingPoint + (heightOfLine * 4) + (shift1 * 2) + (shift2 * 2), width: startingWidth, height: heightOfLine))

blueLine.backgroundColor = blue
redLine.backgroundColor = red
orangeLine.backgroundColor = orange
purpleLine.backgroundColor = purple
greenLine.backgroundColor = green

view.addSubview(blueLine)
view.addSubview(redLine)
view.addSubview(orangeLine)
view.addSubview(purpleLine)
view.addSubview(greenLine)

UIView.animate(withDuration: 2.0) {
  blueLine.frame = CGRect(x: blueLine.frame.minX, y: blueLine.frame.minY, width: view.bounds.width, height: blueLine.frame.height)
  
  redLine.frame = CGRect(x: redLine.frame.minX, y: redLine.frame.minY, width: view.bounds.width, height: redLine.frame.height)
  
  orangeLine.frame = CGRect(x: orangeLine.frame.minX, y: orangeLine.frame.minY, width: view.bounds.width, height: orangeLine.frame.height)
  
  purpleLine.frame = CGRect(x: purpleLine.frame.minX, y: purpleLine.frame.minY, width: view.bounds.width, height: purpleLine.frame.height)
  
  greenLine.frame = CGRect(x: greenLine.frame.minX, y: greenLine.frame.minY, width: view.bounds.width, height: greenLine.frame.height)
}

let labelSpacing : CGFloat = (130.0 / 2208.0) * view.frame.height
let labelHeight : CGFloat = (67.0 / 2208.0) * view.frame.height

let WWDC2016Label = UILabel(frame: CGRect(x: 0, y: labelSpacing + greenLine.frame.maxY, width: view.frame.width, height: labelHeight))

var myString:NSString = "W W D C 1 6"
var myMutableString = NSMutableAttributedString()
//(107.0 / 2208.0) * view.frame.height
myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: (67.0 / 2208.0) * view.frame.height, weight: UIFontWeightThin)])

myMutableString.addAttribute(NSForegroundColorAttributeName, value: green, range: NSRange(location:0,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: purple, range: NSRange(location:2,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: orange, range: NSRange(location:4,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: red, range: NSRange(location:6,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: blue, range: NSRange(location:8,length:3))


WWDC2016Label.attributedText = myMutableString

WWDC2016Label.textAlignment = .center
view.addSubview(WWDC2016Label)

let appleRatio : CGFloat =  1102.0 / 1289.0
let appleIconView = AppleIconView(frame: CGRect.init(x: 0, y: 0, width: (appleRatio * 325.0 / 2208.0) * view.frame.height, height: (325.0 / 2208.0) * view.frame.height))

appleIconView.addMask()

appleIconView.backgroundColor = red
appleIconView.frame = CGRect(x: view.center.x - (appleIconView.frame.width / 2.0), y: blueLine.frame.minY - ((137.0 / 2208.0) * view.frame.height), width: appleIconView.frame.width, height: appleIconView.frame.height)

view.addSubview(appleIconView)


