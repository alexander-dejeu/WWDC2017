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

let ratio = 2208.0 / 1242.0
let WIDTH = 200.0

let view = UIView(frame: CGRect(x: 0, y: 0, width: WIDTH, height: WIDTH * ratio))
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
(107.0 / 2208.0) * view.frame.height
myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: (67.0 / 2208.0) * view.frame.height, weight: UIFontWeightThin)])

myMutableString.addAttribute(NSForegroundColorAttributeName, value: green, range: NSRange(location:0,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: purple, range: NSRange(location:2,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: orange, range: NSRange(location:4,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: red, range: NSRange(location:6,length:1))
myMutableString.addAttribute(NSForegroundColorAttributeName, value: blue, range: NSRange(location:8,length:3))


WWDC2016Label.attributedText = myMutableString

WWDC2016Label.textAlignment = .center
view.addSubview(WWDC2016Label)



public class AppleIconView: UIView {
  
  var leafPath: UIBezierPath!
  var applePath: UIBezierPath!
  
  override public func draw(_ rect: CGRect) {
    
    leafPath = createLeafPath(height: rect.height, width: rect.width)
    applePath = createApplePath(height: rect.height, width: rect.width)
    
    UIColor.white.setStroke()
    leafPath.stroke()
    applePath.stroke()
  }
  //: Author Krutarth Majithiya
  func createLeafPath(height h: CGFloat, width w : CGFloat) -> UIBezierPath {
    
    let leafPathClipper = UIBezierPath()
    
    leafPathClipper.move(to: CGPoint(x: 0.4886569873 * w, y: 0.263382467 * h))
    leafPathClipper.addCurve(to: CGPoint(x: 0.5140653358 * w , y: 0.1501163693 * h), controlPoint1: CGPoint(x: 0.4886569873 * w, y: 0.263382467 * h), controlPoint2: CGPoint(x: 0.4795825771 * w, y: 0.1958882855 * h))
    leafPathClipper.addCurve(to: CGPoint(x: 0.5921052632 * w, y: 0.07719162141 * h), controlPoint1: CGPoint(x: 0.5485480944 * w, y: 0.1043444531 * h), controlPoint2: CGPoint(x: 0.5921052632 * w, y: 0.07719162141 * h))
    leafPathClipper.addLine(to: CGPoint(x: 0.6265880218 * w, y: 0.05857253685 * h))
    leafPathClipper.addLine(to: CGPoint(x: 0.6665154265 * w, y: 0.04615981381 * h))
    leafPathClipper.addLine(to: CGPoint(x: 0.7019056261 * w, y: 0.04072924748 * h))
    leafPathClipper.addLine(to: CGPoint(x: 0.7109800363 * w, y: 0.04072924748 * h))
    leafPathClipper.addCurve(to: CGPoint(x: 0.6710526316 * w, y: 0.1757176106 * h), controlPoint1: CGPoint(x: 0.7109800363 * w, y: 0.04072924748 * h), controlPoint2: CGPoint(x: 0.7155172414 * w, y: 0.1299456943 * h))
    leafPathClipper.addCurve(to: CGPoint(x: 0.6147912886 * w, y: 0.2261442979 * h), controlPoint1: CGPoint(x: 0.6265880218 * w, y: 0.2214895268 * h), controlPoint2: CGPoint(x: 0.6147912886 * w, y: 0.2261442979 * h))
    leafPathClipper.addLine(to: CGPoint(x: 0.5721415608 * w, y: 0.2478665632 * h))
    leafPathClipper.addLine(to: CGPoint(x: 0.5440108893 * w, y: 0.2556245151 * h))
    leafPathClipper.addCurve(to: CGPoint(x: 0.4995462795 * w, y: 0.263382467 * h), controlPoint1: CGPoint(x: 0.5440108893 * w, y: 0.2556245151 * h), controlPoint2: CGPoint(x: 0.5104355717 * w, y: 0.263382467 * h))
    leafPathClipper.addCurve(to: CGPoint(x: 0.4886569873 * w, y: 0.263382467 * h), controlPoint1: CGPoint(x: 0.4886569873 * w, y: 0.263382467 * h), controlPoint2: CGPoint(x: 0.4886569873 * w, y: 0.263382467 * h))
    leafPathClipper.close()
    leafPathClipper.lineWidth = 0
    
    return leafPathClipper
  }
  
  func createApplePath(height h: CGFloat, width w : CGFloat) -> UIBezierPath {
    
    let applePathCplipper = UIBezierPath()
    
    //W = 1102
    //H = 1289
    
    applePathCplipper.move(to: CGPoint(x: 0.5131578947 * w, y: 1182.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 0.416061706 * w, y: 1207.5), controlPoint1: CGPoint(x: 0.5131578947 * w, y: 1182.5), controlPoint2: CGPoint(x: 0.4460072595 * w, y: 1189.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 381.5, y: 1231.5), controlPoint1: CGPoint(x: 425.5, y: 1225.5), controlPoint2: CGPoint(x: 381.5, y: 1231.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 346.5, y: 1231.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 233.5, y: 1164.5), controlPoint1: CGPoint(x: 346.5, y: 1231.5), controlPoint2: CGPoint(x: 273.5, y: 1216.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 195.5, y: 1120.5), controlPoint1: CGPoint(x: 193.5, y: 1112.5), controlPoint2: CGPoint(x: 195.5, y: 1120.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 153.5, y: 1063.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 78.5, y: 915.5), controlPoint1: CGPoint(x: 153.5, y: 1063.5), controlPoint2: CGPoint(x: 82.5, y: 939.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 70.5, y: 889.5), controlPoint1: CGPoint(x: 74.5, y: 891.5), controlPoint2: CGPoint(x: 76.5, y: 910.5 * h))
    applePathCplipper.addCurve(to: CGPoint(x: 60.5, y: 857.5), controlPoint1: CGPoint(x: 64.5, y: 868.5), controlPoint2: CGPoint(x: 60.5, y: 857.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.04582577132 * w, y: 819.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.04038112523 * w, y: 782.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.03584392015 * w, y: 744.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.0331215971 * w, y: 704.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.0331215971 * w, y: 663.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.0331215971 * w, y: 638.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.03584392015 * w, y: 612.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.04310344828 * w, y: 578.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.05036297641 * w, y: 547.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.06397459165 * w, y: 505.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.08393829401 * w, y: 462.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.1075317604 * w, y: 427.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.136569873 * w, y: 394.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.1619782214 * w, y: 373.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.1864791289 * w, y: 356.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.2082577132 * w, y: 345.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.2345735027 * w, y: 335.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.2563520871 * w, y: 329.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.2772232305 * w, y: 325.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.2980943739 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.3089836661 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.3416515426 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.03584392015 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.3725045372 * w, y: 325.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.3915607985 * w, y: 329.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.4042649728 * w, y: 335.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.4287658802 * w, y: 345.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.4541742287 * w, y: 356.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.4777676951 * w, y: 367.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.4904718693 * w, y: 370.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.5031760436 * w, y: 373.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.5131578947 * w, y: 373.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.5349364791 * w, y: 367.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.5612522686 * w, y: 356.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.5884754991 * w, y: 345.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.6184210526 * w, y: 335.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.6519963702 * w, y: 325.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.6801270417 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.7173321234 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.7391107078 * w, y: 322.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.7572595281 * w, y: 325.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.7754083485 * w, y: 329.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8026315789 * w, y: 339.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8244101633 * w, y: 348.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8434664247 * w, y: 356.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8670598911 * w, y: 373.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8824863884 * w, y: 385.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8979128857 * w, y: 400.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.914246824 * w, y: 417.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.9269509982 * w, y: 433.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.9305807623 * w, y: 439.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.917876588 * w, y: 448.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.9024500907 * w, y: 462.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8861161525 * w, y: 479.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.863430127 * w, y: 505.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8407441016 * w, y: 538.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8280399274 * w, y: 565.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8162431942 * w, y: 602.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8089836661 * w, y: 647.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8089836661 * w, y: 689.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8117059891 * w, y: 716.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.8189655172 * w, y: 744.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 912.5 * w, y: 772.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 926.5 * w, y: 800.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 940.5 * w, y: 819.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 964.5 * w, y: 847.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 994.5 * w, y: 874.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1021.5 * w, y: 892.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1042.5 * w, y: 904.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1056.5 * w, y: 912.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1048.5 * w, y: 935.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1034.5 * w, y: 969.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1021.5 * w, y: 999.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 1004.5 * w, y: 1029.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 972.5 * w, y: 1081.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 945.5 * w, y: 1117.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 919.5 * w, y: 1146.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 894.5 * w, y: 1172.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 870.5 * w, y: 1192.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 851.5 * w, y: 1207.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 834.5 * w, y: 1216.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 814.5 * w, y: 1225.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 790.5 * w, y: 1231.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 762.5 * w, y: 1231.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 736.5 * w, y: 1228.5 * h))
    applePathCplipper.addLine(to: CGPoint(x: 707.68 * w, y: 1219.63 * h))
    applePathCplipper.addLine(to: CGPoint(x: 655.11 * w, y: 1199.97 * h))
    applePathCplipper.addLine(to: CGPoint(x: 635.52 * w, y: 1194.03 * h))
    applePathCplipper.addLine(to: CGPoint(x: 615.44 * w, y: 1188.22 * h))
    applePathCplipper.addLine(to: CGPoint(x: 603.73 * w, y: 1186.34 * h))
    applePathCplipper.addLine(to: CGPoint(x: 595.36 * w, y: 1184.08 * h))
    applePathCplipper.addLine(to: CGPoint(x: 0.5131578947 * w, y: 1182.5 * h))
    applePathCplipper.close()
    applePathCplipper.lineWidth = 0
    
    return applePathCplipper
  }
}

//let appleIconView = AppleIconView(frame: CGRect.init(x: 0, y: 0, width: 1102, height: 1289))
//
//let combinePath = UIBezierPath()
//combinePath.append(appleIconView.leafPath)
//combinePath.append(appleIconView.applePath)
//
//let shapeLayerMask = CAShapeLayer()
//shapeLayerMask.path = combinePath.cgPath
//shapeLayerMask.backgroundColor = UIColor(colorLiteralRed: 40/255, green: 43/255, blue: 53/255, alpha: 1).cgColor
//appleIconView.layer.mask = shapeLayerMask
//
//
//let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 2600, height: 1400))
//backgroundView.backgroundColor = UIColor(colorLiteralRed: 40/255, green: 43/255, blue: 53/255, alpha: 1)
//appleIconView.center = view.center
//
//view.addSubview(appleIconView)


