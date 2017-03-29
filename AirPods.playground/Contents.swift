//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

enum airPodStyle{
  case left
  case right
}
class AirPod : UIView {
  
  func drawLeftAirPod(){
    let strokeColor3 = UIColor(red: 0.005, green: 0.009, blue: 0.007, alpha: 1.000)
    let fillColor2 = UIColor(red: 0.005, green: 0.009, blue: 0.007, alpha: 1.000)
    
    //// Group 2
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 75.5, y: 8))
    bezierPath.addCurve(to: CGPoint(x: 8, y: 39.96), controlPoint1: CGPoint(x: 47.57, y: 8), controlPoint2: CGPoint(x: 22.93, y: 20.64))
    bezierPath.addLine(to: CGPoint(x: 8, y: 126.03))
    bezierPath.addCurve(to: CGPoint(x: 75.5, y: 158), controlPoint1: CGPoint(x: 22.93, y: 145.35), controlPoint2: CGPoint(x: 47.57, y: 158))
    bezierPath.addCurve(to: CGPoint(x: 113, y: 149.75), controlPoint1: CGPoint(x: 89.02, y: 158), controlPoint2: CGPoint(x: 101.73, y: 154.99))
    bezierPath.addLine(to: CGPoint(x: 113, y: 323))
    bezierPath.addLine(to: CGPoint(x: 158, y: 323))
    bezierPath.addLine(to: CGPoint(x: 158, y: 83))
    bezierPath.addCurve(to: CGPoint(x: 75.5, y: 8), controlPoint1: CGPoint(x: 158, y: 41.58), controlPoint2: CGPoint(x: 121.07, y: 8))
    bezierPath.addLine(to: CGPoint(x: 75.5, y: 8))
    bezierPath.close()
    strokeColor3.setStroke()
    bezierPath.lineWidth = 15
    bezierPath.lineCapStyle = .round
    bezierPath.lineJoinStyle = .round
    bezierPath.stroke()
    
    
    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: 91, y: 128))
    bezier2Path.addCurve(to: CGPoint(x: 113.5, y: 150.5), controlPoint1: CGPoint(x: 103.42, y: 128), controlPoint2: CGPoint(x: 113.5, y: 138.08))
    strokeColor3.setStroke()
    bezier2Path.lineWidth = 15
    bezier2Path.lineCapStyle = .round
    bezier2Path.lineJoinStyle = .round
    bezier2Path.stroke()
    
    
    //// Bezier 3 Drawing
    let bezier3Path = UIBezierPath()
    bezier3Path.move(to: CGPoint(x: 143, y: 353))
    bezier3Path.addLine(to: CGPoint(x: 128, y: 353))
    bezier3Path.addCurve(to: CGPoint(x: 113, y: 338), controlPoint1: CGPoint(x: 119.72, y: 353), controlPoint2: CGPoint(x: 113, y: 346.28))
    bezier3Path.addLine(to: CGPoint(x: 113, y: 323))
    bezier3Path.addLine(to: CGPoint(x: 158, y: 323))
    bezier3Path.addLine(to: CGPoint(x: 158, y: 338))
    bezier3Path.addCurve(to: CGPoint(x: 143, y: 353), controlPoint1: CGPoint(x: 158, y: 346.28), controlPoint2: CGPoint(x: 151.28, y: 353))
    bezier3Path.addLine(to: CGPoint(x: 143, y: 353))
    bezier3Path.close()
    strokeColor3.setStroke()
    bezier3Path.lineWidth = 15
    bezier3Path.lineCapStyle = .round
    bezier3Path.lineJoinStyle = .round
    bezier3Path.stroke()
    
    
    //// Oval Drawing
    let ovalPath = UIBezierPath(ovalIn: CGRect(x: 38, y: 68, width: 22.5, height: 22.5))
    fillColor2.setFill()
    ovalPath.fill()
    
    
    //// Bezier 4 Drawing
    let bezier4Path = UIBezierPath()
    bezier4Path.move(to: CGPoint(x: 98, y: 43))
    bezier4Path.addCurve(to: CGPoint(x: 124, y: 68.31), controlPoint1: CGPoint(x: 109.69, y: 48.14), controlPoint2: CGPoint(x: 119, y: 57.18))
    strokeColor3.setStroke()
    bezier4Path.lineWidth = 15
    bezier4Path.lineCapStyle = .round
    bezier4Path.lineJoinStyle = .round
    bezier4Path.stroke()


  }
  func drawRightAirPod(){
    
    //// Color Declarations
    let strokeColor3 = UIColor(red: 0.005, green: 0.009, blue: 0.007, alpha: 1.000)
    let fillColor2 = UIColor(red: 0.005, green: 0.009, blue: 0.007, alpha: 1.000)
    
    //// Group 2
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 93, y: 7.32))
    bezierPath.addCurve(to: CGPoint(x: 160.5, y: 39.28), controlPoint1: CGPoint(x: 120.93, y: 7.32), controlPoint2: CGPoint(x: 145.57, y: 19.96))
    bezierPath.addLine(to: CGPoint(x: 160.5, y: 125.35))
    bezierPath.addCurve(to: CGPoint(x: 93, y: 157.32), controlPoint1: CGPoint(x: 145.57, y: 144.67), controlPoint2: CGPoint(x: 120.93, y: 157.32))
    bezierPath.addCurve(to: CGPoint(x: 55.5, y: 149.07), controlPoint1: CGPoint(x: 79.48, y: 157.32), controlPoint2: CGPoint(x: 66.77, y: 154.3))
    bezierPath.addLine(to: CGPoint(x: 55.5, y: 322.32))
    bezierPath.addLine(to: CGPoint(x: 10.5, y: 322.32))
    bezierPath.addLine(to: CGPoint(x: 10.5, y: 82.32))
    bezierPath.addCurve(to: CGPoint(x: 93, y: 7.32), controlPoint1: CGPoint(x: 10.5, y: 40.9), controlPoint2: CGPoint(x: 47.43, y: 7.32))
    bezierPath.addLine(to: CGPoint(x: 93, y: 7.32))
    bezierPath.close()
    strokeColor3.setStroke()
    bezierPath.lineWidth = 15
    bezierPath.lineCapStyle = .round
    bezierPath.lineJoinStyle = .round
    bezierPath.stroke()
    
    
    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: 78, y: 127.32))
    bezier2Path.addCurve(to: CGPoint(x: 55.5, y: 149.82), controlPoint1: CGPoint(x: 65.58, y: 127.32), controlPoint2: CGPoint(x: 55.5, y: 137.4))
    strokeColor3.setStroke()
    bezier2Path.lineWidth = 15
    bezier2Path.lineCapStyle = .round
    bezier2Path.lineJoinStyle = .round
    bezier2Path.stroke()
    
    
    //// Bezier 3 Drawing
    let bezier3Path = UIBezierPath()
    bezier3Path.move(to: CGPoint(x: 25.5, y: 352.32))
    bezier3Path.addLine(to: CGPoint(x: 40.5, y: 352.32))
    bezier3Path.addCurve(to: CGPoint(x: 55.5, y: 337.32), controlPoint1: CGPoint(x: 48.78, y: 352.32), controlPoint2: CGPoint(x: 55.5, y: 345.6))
    bezier3Path.addLine(to: CGPoint(x: 55.5, y: 322.32))
    bezier3Path.addLine(to: CGPoint(x: 10.5, y: 322.32))
    bezier3Path.addLine(to: CGPoint(x: 10.5, y: 337.32))
    bezier3Path.addCurve(to: CGPoint(x: 25.5, y: 352.32), controlPoint1: CGPoint(x: 10.5, y: 345.6), controlPoint2: CGPoint(x: 17.22, y: 352.32))
    bezier3Path.addLine(to: CGPoint(x: 25.5, y: 352.32))
    bezier3Path.close()
    strokeColor3.setStroke()
    bezier3Path.lineWidth = 15
    bezier3Path.lineCapStyle = .round
    bezier3Path.lineJoinStyle = .round
    bezier3Path.stroke()
    
    
    //// Bezier 4 Drawing
    let bezier4Path = UIBezierPath()
    bezier4Path.move(to: CGPoint(x: 70.53, y: 42))
    bezier4Path.addCurve(to: CGPoint(x: 44.53, y: 67.31), controlPoint1: CGPoint(x: 58.84, y: 47.14), controlPoint2: CGPoint(x: 49.53, y: 56.18))
    strokeColor3.setStroke()
    bezier4Path.lineWidth = 15
    bezier4Path.lineCapStyle = .round
    bezier4Path.lineJoinStyle = .round
    bezier4Path.stroke()
    
    
    //// Oval Drawing
    let ovalPath = UIBezierPath(ovalIn: CGRect(x: 108, y: 67.3, width: 22.5, height: 22.5))
    fillColor2.setFill()
    ovalPath.fill()


  }
  
  override func draw(_ rect: CGRect) {
    let style : airPodStyle = .left
    switch style{
    case .left: drawLeftAirPod()
    case .right : drawRightAirPod()
    }
  }
}

let w : CGFloat = 599
let h : CGFloat = 945
var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.7529411765, blue: 0.2588235294, alpha: 1)
PlaygroundPage.current.liveView = view

let smallCloud : Cloud = Cloud(frame : CGRect(x: 36, y: 32.25, width: 125.25, height: 78))
let doubleCloud : Cloud = Cloud(frame : CGRect(x: 366.75, y: 33, width: 213, height: 105))
let singleCenterCloud : Cloud = Cloud(frame: CGRect(x: 198.75, y: 75.75, width: 172.5, height: 104.25))
let singleLeftCloud : Cloud = Cloud(frame: CGRect(x: 39, y: 138, width: 148.5, height: 99))
let bigFillCloud : Cloud = Cloud(frame: CGRect(x: 113.25, y: 110.25, width: 220.5, height: 139.5))
let longRightCloud : Cloud = Cloud(frame: CGRect(x: 334.5, y: 187.5, width: 189, height: 99))
let filledSmallRightCloud : Cloud = Cloud(frame: CGRect(x: 473.25, y: 232.5, width: 125.25, height: 78))

let fatLeftLongCloud : Cloud = Cloud(frame: CGRect(x: 36, y: 272.25, width: 229.5, height: 135))
let tripleBumpCloud : Cloud = Cloud(frame: CGRect(x: 361.5, y: 354.75, width: 216, height: 141.75))
let largestCloud : Cloud = Cloud(frame: CGRect(x: 177, y: 354.75, width: 252, height: 156))


let leftAirPodCloud : Cloud = Cloud(frame: CGRect(x: -123.24, y: 241.88, width: 271.25, height: 126))
let rightAirPodCloud : Cloud = Cloud(frame: CGRect(x: 406.5, y: 110.25, width: 271.25, height: 126))


doubleCloud.cloudType = .partialLeftAndFullRightCloud
singleCenterCloud.cloudType = .basicOutlineCloud
singleLeftCloud.cloudType = .outlinedCloud
bigFillCloud.cloudType = .bigBasicFilledCloud
fatLeftLongCloud.cloudType = .midLongCloud
longRightCloud.cloudType = .outlinedLongCloud
largestCloud.cloudType = .largeFilledCloud
tripleBumpCloud.cloudType = .indentedBottomCloud

leftAirPodCloud.cloudType = .leftAirpodCloud
rightAirPodCloud.cloudType = .rightAirpodCloud


view.addSubview(smallCloud)
view.addSubview(doubleCloud)
view.addSubview(singleCenterCloud)
view.addSubview(singleLeftCloud)
view.addSubview(bigFillCloud)
view.addSubview(fatLeftLongCloud)
view.addSubview(filledSmallRightCloud)
view.addSubview(rightAirPodCloud)
view.addSubview(leftAirPodCloud)
view.addSubview(tripleBumpCloud)
view.addSubview(largestCloud)
view.addSubview(longRightCloud)

//let leftAirPod : AirPod = AirPod(frame: CGRect(x: 0, y: 0, width: 164, height: 360))
//leftAirPod.backgroundColor = .white
//view.addSubview(leftAirPod)
