import UIKit

public enum cloudStyle {
  case filledSmallCloud
  case partialLeftAndFullRightCloud
  case basicOutlineCloud
  case rightAirpodCloud
  case leftAirpodCloud
  case bigBasicFilledCloud
  case outlinedCloud
  case outlinedLongCloud
  case midLongCloud
  case indentedBottomCloud
  case largeFilledCloud
}
public class Cloud : UIView {
  public var cloudType : cloudStyle = .filledSmallCloud {
    didSet {
      setNeedsDisplay()
    }
  }
  
  override public init(frame: CGRect){
    super.init(frame: frame)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func drawFilledSmallCloud(){
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 101.05, y: 104))
    bezierPath.addLine(to: CGPoint(x: 36.18, y: 104))
    bezierPath.addCurve(to: CGPoint(x: 0, y: 67.46), controlPoint1: CGPoint(x: 16.2, y: 104), controlPoint2: CGPoint(x: 0, y: 87.64))
    bezierPath.addCurve(to: CGPoint(x: 36.18, y: 30.92), controlPoint1: CGPoint(x: 0, y: 47.28), controlPoint2: CGPoint(x: 16.2, y: 30.92))
    bezierPath.addCurve(to: CGPoint(x: 52.9, y: 35.04), controlPoint1: CGPoint(x: 42.21, y: 30.92), controlPoint2: CGPoint(x: 47.9, y: 32.41))
    bezierPath.addCurve(to: CGPoint(x: 101.59, y: 0), controlPoint1: CGPoint(x: 59.86, y: 14.65), controlPoint2: CGPoint(x: 79.03, y: 0))
    bezierPath.addCurve(to: CGPoint(x: 153.08, y: 52), controlPoint1: CGPoint(x: 130.03, y: 0), controlPoint2: CGPoint(x: 153.08, y: 23.28))
    bezierPath.addCurve(to: CGPoint(x: 153.05, y: 53.76), controlPoint1: CGPoint(x: 153.08, y: 52.59), controlPoint2: CGPoint(x: 153.07, y: 53.17))
    bezierPath.addCurve(to: CGPoint(x: 167, y: 77.3), controlPoint1: CGPoint(x: 161.36, y: 58.26), controlPoint2: CGPoint(x: 167, y: 67.11))
    bezierPath.addCurve(to: CGPoint(x: 140.56, y: 104), controlPoint1: CGPoint(x: 167, y: 92.04), controlPoint2: CGPoint(x: 155.16, y: 104))
    bezierPath.addLine(to: CGPoint(x: 101.59, y: 104))
    bezierPath.addCurve(to: CGPoint(x: 101.05, y: 104), controlPoint1: CGPoint(x: 101.51, y: 104), controlPoint2: CGPoint(x: 101.05, y: 104))
    bezierPath.addLine(to: CGPoint(x: 101.59, y: 104))
    bezierPath.addLine(to: CGPoint(x: 101.05, y: 104))
    bezierPath.close()
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()
  }
  func drawPartialLeftAndFullRightCloud(){
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Group 2
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 51.15, y: 98.69))
    bezierPath.addLine(to: CGPoint(x: 31.26, y: 98.69))
    bezierPath.addCurve(to: CGPoint(x: 7.74, y: 75.05), controlPoint1: CGPoint(x: 18.29, y: 98.69), controlPoint2: CGPoint(x: 7.74, y: 88.09))
    bezierPath.addCurve(to: CGPoint(x: 31.26, y: 51.41), controlPoint1: CGPoint(x: 7.74, y: 62.01), controlPoint2: CGPoint(x: 18.29, y: 51.41))
    bezierPath.addCurve(to: CGPoint(x: 34.24, y: 51.62), controlPoint1: CGPoint(x: 32.12, y: 51.41), controlPoint2: CGPoint(x: 33.07, y: 51.48))
    bezierPath.addLine(to: CGPoint(x: 38.06, y: 52.1))
    bezierPath.addLine(to: CGPoint(x: 38.45, y: 48.26))
    bezierPath.addCurve(to: CGPoint(x: 83.74, y: 7.18), controlPoint1: CGPoint(x: 40.81, y: 24.84), controlPoint2: CGPoint(x: 60.28, y: 7.18))
    bezierPath.addCurve(to: CGPoint(x: 111.31, y: 16.61), controlPoint1: CGPoint(x: 93.93, y: 7.18), controlPoint2: CGPoint(x: 103.54, y: 10.65))
    bezierPath.addCurve(to: CGPoint(x: 116.59, y: 11.25), controlPoint1: CGPoint(x: 112.98, y: 14.72), controlPoint2: CGPoint(x: 114.73, y: 12.92))
    bezierPath.addCurve(to: CGPoint(x: 83.74, y: -0.36), controlPoint1: CGPoint(x: 107.37, y: 3.94), controlPoint2: CGPoint(x: 95.83, y: -0.36))
    bezierPath.addCurve(to: CGPoint(x: 31.45, y: 43.88), controlPoint1: CGPoint(x: 57.55, y: -0.36), controlPoint2: CGPoint(x: 35.78, y: 18.16))
    bezierPath.addLine(to: CGPoint(x: 31.26, y: 43.88))
    bezierPath.addCurve(to: CGPoint(x: 0.21, y: 75.05), controlPoint1: CGPoint(x: 14.14, y: 43.88), controlPoint2: CGPoint(x: 0.21, y: 57.86))
    bezierPath.addCurve(to: CGPoint(x: 31.26, y: 106.22), controlPoint1: CGPoint(x: 0.21, y: 92.24), controlPoint2: CGPoint(x: 14.14, y: 106.22))
    bezierPath.addLine(to: CGPoint(x: 51.33, y: 106.22))
    bezierPath.addCurve(to: CGPoint(x: 51.03, y: 101.47), controlPoint1: CGPoint(x: 51.15, y: 104.66), controlPoint2: CGPoint(x: 51.03, y: 103.08))
    bezierPath.addCurve(to: CGPoint(x: 51.15, y: 98.69), controlPoint1: CGPoint(x: 51.03, y: 100.53), controlPoint2: CGPoint(x: 51.09, y: 99.61))
    bezierPath.close()
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()
    
    
    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: 236.79, y: 43.95))
    bezier2Path.addCurve(to: CGPoint(x: 226.86, y: 45.02), controlPoint1: CGPoint(x: 233.45, y: 43.95), controlPoint2: CGPoint(x: 230.12, y: 44.31))
    bezier2Path.addCurve(to: CGPoint(x: 165.84, y: 4.65), controlPoint1: CGPoint(x: 216.45, y: 20.8), controlPoint2: CGPoint(x: 192.14, y: 4.65))
    bezier2Path.addCurve(to: CGPoint(x: 100.29, y: 60.09), controlPoint1: CGPoint(x: 133.02, y: 4.65), controlPoint2: CGPoint(x: 105.73, y: 27.86))
    bezier2Path.addLine(to: CGPoint(x: 100.06, y: 60.09))
    bezier2Path.addCurve(to: CGPoint(x: 61.14, y: 99.16), controlPoint1: CGPoint(x: 78.6, y: 60.09), controlPoint2: CGPoint(x: 61.14, y: 77.62))
    bezier2Path.addCurve(to: CGPoint(x: 100.06, y: 138.22), controlPoint1: CGPoint(x: 61.14, y: 120.7), controlPoint2: CGPoint(x: 78.6, y: 138.22))
    bezier2Path.addLine(to: CGPoint(x: 236.79, y: 138.22))
    bezier2Path.addCurve(to: CGPoint(x: 283.74, y: 91.09), controlPoint1: CGPoint(x: 262.68, y: 138.22), controlPoint2: CGPoint(x: 283.74, y: 117.08))
    bezier2Path.addCurve(to: CGPoint(x: 236.79, y: 43.95), controlPoint1: CGPoint(x: 283.74, y: 65.1), controlPoint2: CGPoint(x: 262.68, y: 43.95))
    bezier2Path.addLine(to: CGPoint(x: 236.79, y: 43.95))
    bezier2Path.close()
    bezier2Path.move(to: CGPoint(x: 274.3, y: 91.09))
    bezier2Path.addCurve(to: CGPoint(x: 236.79, y: 128.78), controlPoint1: CGPoint(x: 274.3, y: 111.87), controlPoint2: CGPoint(x: 257.47, y: 128.78))
    bezier2Path.addLine(to: CGPoint(x: 100.06, y: 128.78))
    bezier2Path.addCurve(to: CGPoint(x: 70.58, y: 99.16), controlPoint1: CGPoint(x: 83.81, y: 128.78), controlPoint2: CGPoint(x: 70.58, y: 115.5))
    bezier2Path.addCurve(to: CGPoint(x: 100.06, y: 69.53), controlPoint1: CGPoint(x: 70.58, y: 82.82), controlPoint2: CGPoint(x: 83.81, y: 69.53))
    bezier2Path.addCurve(to: CGPoint(x: 103.8, y: 69.8), controlPoint1: CGPoint(x: 101.15, y: 69.53), controlPoint2: CGPoint(x: 102.33, y: 69.61))
    bezier2Path.addLine(to: CGPoint(x: 108.59, y: 70.39))
    bezier2Path.addLine(to: CGPoint(x: 109.07, y: 65.58))
    bezier2Path.addCurve(to: CGPoint(x: 165.84, y: 14.09), controlPoint1: CGPoint(x: 112.04, y: 36.23), controlPoint2: CGPoint(x: 136.44, y: 14.09))
    bezier2Path.addCurve(to: CGPoint(x: 219.56, y: 52.24), controlPoint1: CGPoint(x: 189.89, y: 14.09), controlPoint2: CGPoint(x: 211.48, y: 29.43))
    bezier2Path.addLine(to: CGPoint(x: 221.08, y: 56.55))
    bezier2Path.addLine(to: CGPoint(x: 225.43, y: 55.16))
    bezier2Path.addCurve(to: CGPoint(x: 236.79, y: 53.4), controlPoint1: CGPoint(x: 229.13, y: 53.99), controlPoint2: CGPoint(x: 232.95, y: 53.4))
    bezier2Path.addCurve(to: CGPoint(x: 274.3, y: 91.09), controlPoint1: CGPoint(x: 257.47, y: 53.4), controlPoint2: CGPoint(x: 274.3, y: 70.31))
    bezier2Path.addLine(to: CGPoint(x: 274.3, y: 91.09))
    bezier2Path.close()
    bezier2Path.usesEvenOddFillRule = true
    fillColor.setFill()
    bezier2Path.fill()
  }
  func drawBasicOutlineCloud(){
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 180.96, y: 40.99))
    bezierPath.addCurve(to: CGPoint(x: 170.76, y: 42.09), controlPoint1: CGPoint(x: 177.53, y: 40.99), controlPoint2: CGPoint(x: 174.1, y: 41.36))
    bezierPath.addCurve(to: CGPoint(x: 108.06, y: 0.37), controlPoint1: CGPoint(x: 160.06, y: 17.06), controlPoint2: CGPoint(x: 135.08, y: 0.37))
    bezierPath.addCurve(to: CGPoint(x: 40.71, y: 57.67), controlPoint1: CGPoint(x: 74.33, y: 0.37), controlPoint2: CGPoint(x: 46.29, y: 24.35))
    bezierPath.addCurve(to: CGPoint(x: 40.47, y: 57.66), controlPoint1: CGPoint(x: 40.63, y: 57.66), controlPoint2: CGPoint(x: 40.55, y: 57.66))
    bezierPath.addCurve(to: CGPoint(x: 0.48, y: 98.05), controlPoint1: CGPoint(x: 18.42, y: 57.66), controlPoint2: CGPoint(x: 0.48, y: 75.78))
    bezierPath.addCurve(to: CGPoint(x: 40.47, y: 138.42), controlPoint1: CGPoint(x: 0.48, y: 120.31), controlPoint2: CGPoint(x: 18.42, y: 138.42))
    bezierPath.addLine(to: CGPoint(x: 180.96, y: 138.42))
    bezierPath.addCurve(to: CGPoint(x: 229.2, y: 89.71), controlPoint1: CGPoint(x: 207.56, y: 138.42), controlPoint2: CGPoint(x: 229.2, y: 116.57))
    bezierPath.addCurve(to: CGPoint(x: 180.96, y: 40.99), controlPoint1: CGPoint(x: 229.2, y: 62.85), controlPoint2: CGPoint(x: 207.56, y: 40.99))
    bezierPath.addLine(to: CGPoint(x: 180.96, y: 40.99))
    bezierPath.close()
    bezierPath.move(to: CGPoint(x: 219.5, y: 89.71))
    bezierPath.addCurve(to: CGPoint(x: 180.96, y: 128.66), controlPoint1: CGPoint(x: 219.5, y: 111.19), controlPoint2: CGPoint(x: 202.21, y: 128.66))
    bezierPath.addLine(to: CGPoint(x: 40.47, y: 128.66))
    bezierPath.addCurve(to: CGPoint(x: 10.18, y: 98.05), controlPoint1: CGPoint(x: 23.77, y: 128.66), controlPoint2: CGPoint(x: 10.18, y: 114.93))
    bezierPath.addCurve(to: CGPoint(x: 40.47, y: 67.42), controlPoint1: CGPoint(x: 10.18, y: 81.16), controlPoint2: CGPoint(x: 23.77, y: 67.42))
    bezierPath.addCurve(to: CGPoint(x: 44.3, y: 67.7), controlPoint1: CGPoint(x: 41.58, y: 67.42), controlPoint2: CGPoint(x: 42.8, y: 67.51))
    bezierPath.addLine(to: CGPoint(x: 49.23, y: 68.31))
    bezierPath.addLine(to: CGPoint(x: 49.73, y: 63.34))
    bezierPath.addCurve(to: CGPoint(x: 108.06, y: 10.13), controlPoint1: CGPoint(x: 52.77, y: 33), controlPoint2: CGPoint(x: 77.85, y: 10.13))
    bezierPath.addCurve(to: CGPoint(x: 163.25, y: 49.55), controlPoint1: CGPoint(x: 132.77, y: 10.13), controlPoint2: CGPoint(x: 154.95, y: 25.97))
    bezierPath.addLine(to: CGPoint(x: 164.82, y: 54.01))
    bezierPath.addLine(to: CGPoint(x: 169.29, y: 52.57))
    bezierPath.addCurve(to: CGPoint(x: 180.96, y: 50.75), controlPoint1: CGPoint(x: 173.08, y: 51.36), controlPoint2: CGPoint(x: 177.01, y: 50.75))
    bezierPath.addCurve(to: CGPoint(x: 219.5, y: 89.71), controlPoint1: CGPoint(x: 202.21, y: 50.75), controlPoint2: CGPoint(x: 219.5, y: 68.23))
    bezierPath.addLine(to: CGPoint(x: 219.5, y: 89.71))
    bezierPath.close()
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()
  }
  func drawRightAirpodCloud(){
    //// Color Declarations
    let strokeColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Group 2
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 37.68, y: 157.5))
    bezierPath.addLine(to: CGPoint(x: 277.68, y: 157.5))
    bezierPath.addCurve(to: CGPoint(x: 352.68, y: 75), controlPoint1: CGPoint(x: 319.1, y: 157.5), controlPoint2: CGPoint(x: 352.68, y: 120.57))
    bezierPath.addLine(to: CGPoint(x: 352.68, y: 75))
    bezierPath.addLine(to: CGPoint(x: 352.68, y: 75))
    bezierPath.addCurve(to: CGPoint(x: 320.72, y: 7.5), controlPoint1: CGPoint(x: 352.68, y: 47.07), controlPoint2: CGPoint(x: 340.04, y: 22.42))
    bezierPath.addLine(to: CGPoint(x: 234.65, y: 7.5))
    bezierPath.addCurve(to: CGPoint(x: 202.68, y: 75), controlPoint1: CGPoint(x: 215.33, y: 22.42), controlPoint2: CGPoint(x: 202.68, y: 47.07))
    bezierPath.addCurve(to: CGPoint(x: 210.93, y: 112.5), controlPoint1: CGPoint(x: 202.68, y: 88.52), controlPoint2: CGPoint(x: 205.69, y: 101.23))
    bezierPath.addLine(to: CGPoint(x: 37.68, y: 112.5))
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()
    
    
    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: 37.68, y: 157.5))
    bezier2Path.addLine(to: CGPoint(x: 277.68, y: 157.5))
    bezier2Path.addCurve(to: CGPoint(x: 352.68, y: 75), controlPoint1: CGPoint(x: 319.1, y: 157.5), controlPoint2: CGPoint(x: 352.68, y: 120.57))
    bezier2Path.addLine(to: CGPoint(x: 352.68, y: 75))
    bezier2Path.addLine(to: CGPoint(x: 352.68, y: 75))
    bezier2Path.addCurve(to: CGPoint(x: 320.72, y: 7.5), controlPoint1: CGPoint(x: 352.68, y: 47.07), controlPoint2: CGPoint(x: 340.04, y: 22.43))
    bezier2Path.addLine(to: CGPoint(x: 234.65, y: 7.5))
    bezier2Path.addCurve(to: CGPoint(x: 202.68, y: 75), controlPoint1: CGPoint(x: 215.33, y: 22.43), controlPoint2: CGPoint(x: 202.68, y: 47.07))
    bezier2Path.addCurve(to: CGPoint(x: 210.93, y: 112.5), controlPoint1: CGPoint(x: 202.68, y: 88.52), controlPoint2: CGPoint(x: 205.69, y: 101.23))
    bezier2Path.addLine(to: CGPoint(x: 37.68, y: 112.5))
    strokeColor.setStroke()
    bezier2Path.lineWidth = 15
    bezier2Path.lineCapStyle = .round
    bezier2Path.lineJoinStyle = .round
    bezier2Path.stroke()
    
    
    //// Bezier 3 Drawing
    let bezier3Path = UIBezierPath()
    bezier3Path.move(to: CGPoint(x: 37.68, y: 157.5))
    bezier3Path.addLine(to: CGPoint(x: 22.68, y: 157.5))
    bezier3Path.addCurve(to: CGPoint(x: 7.68, y: 142.5), controlPoint1: CGPoint(x: 14.4, y: 157.5), controlPoint2: CGPoint(x: 7.68, y: 150.78))
    bezier3Path.addLine(to: CGPoint(x: 7.68, y: 127.5))
    bezier3Path.addLine(to: CGPoint(x: 7.68, y: 127.5))
    bezier3Path.addCurve(to: CGPoint(x: 22.68, y: 112.5), controlPoint1: CGPoint(x: 7.68, y: 119.22), controlPoint2: CGPoint(x: 14.4, y: 112.5))
    bezier3Path.addLine(to: CGPoint(x: 37.68, y: 112.5))
    bezier3Path.usesEvenOddFillRule = true
    fillColor.setFill()
    bezier3Path.fill()
    
    
    //// Bezier 4 Drawing
    let bezier4Path = UIBezierPath()
    bezier4Path.move(to: CGPoint(x: 37.68, y: 157.5))
    bezier4Path.addLine(to: CGPoint(x: 22.68, y: 157.5))
    bezier4Path.addCurve(to: CGPoint(x: 7.68, y: 142.5), controlPoint1: CGPoint(x: 14.4, y: 157.5), controlPoint2: CGPoint(x: 7.68, y: 150.78))
    bezier4Path.addLine(to: CGPoint(x: 7.68, y: 127.5))
    bezier4Path.addLine(to: CGPoint(x: 7.68, y: 127.5))
    bezier4Path.addCurve(to: CGPoint(x: 22.68, y: 112.5), controlPoint1: CGPoint(x: 7.68, y: 119.22), controlPoint2: CGPoint(x: 14.4, y: 112.5))
    bezier4Path.addLine(to: CGPoint(x: 37.68, y: 112.5))
    strokeColor.setStroke()
    bezier4Path.lineWidth = 15
    bezier4Path.lineCapStyle = .round
    bezier4Path.lineJoinStyle = .round
    bezier4Path.stroke()
  }
  func drawLeftAirpodCloud(){
    let strokeColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Group 2
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 8.32, y: 75))
    bezierPath.addCurve(to: CGPoint(x: 40.29, y: 7.5), controlPoint1: CGPoint(x: 8.32, y: 47.07), controlPoint2: CGPoint(x: 20.96, y: 22.42))
    bezierPath.addLine(to: CGPoint(x: 126.35, y: 7.5))
    bezierPath.addCurve(to: CGPoint(x: 158.32, y: 75), controlPoint1: CGPoint(x: 145.68, y: 22.42), controlPoint2: CGPoint(x: 158.32, y: 47.07))
    bezierPath.addCurve(to: CGPoint(x: 150.07, y: 112.5), controlPoint1: CGPoint(x: 158.32, y: 88.52), controlPoint2: CGPoint(x: 155.31, y: 101.23))
    bezierPath.addLine(to: CGPoint(x: 323.32, y: 112.5))
    bezierPath.addLine(to: CGPoint(x: 323.32, y: 157.5))
    bezierPath.addLine(to: CGPoint(x: 83.32, y: 157.5))
    bezierPath.addCurve(to: CGPoint(x: 8.32, y: 75), controlPoint1: CGPoint(x: 41.91, y: 157.5), controlPoint2: CGPoint(x: 8.32, y: 120.57))
    bezierPath.addLine(to: CGPoint(x: 8.32, y: 75))
    bezierPath.close()
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()
    
    
    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: 8.32, y: 75))
    bezier2Path.addCurve(to: CGPoint(x: 40.28, y: 7.5), controlPoint1: CGPoint(x: 8.32, y: 47.07), controlPoint2: CGPoint(x: 20.96, y: 22.43))
    bezier2Path.addLine(to: CGPoint(x: 126.35, y: 7.5))
    bezier2Path.addCurve(to: CGPoint(x: 158.32, y: 75), controlPoint1: CGPoint(x: 145.67, y: 22.43), controlPoint2: CGPoint(x: 158.32, y: 47.07))
    bezier2Path.addCurve(to: CGPoint(x: 150.07, y: 112.5), controlPoint1: CGPoint(x: 158.32, y: 88.52), controlPoint2: CGPoint(x: 155.31, y: 101.23))
    bezier2Path.addLine(to: CGPoint(x: 323.32, y: 112.5))
    bezier2Path.addLine(to: CGPoint(x: 323.32, y: 157.5))
    bezier2Path.addLine(to: CGPoint(x: 83.32, y: 157.5))
    bezier2Path.addCurve(to: CGPoint(x: 8.32, y: 75), controlPoint1: CGPoint(x: 41.91, y: 157.5), controlPoint2: CGPoint(x: 8.32, y: 120.57))
    bezier2Path.addLine(to: CGPoint(x: 8.32, y: 75))
    bezier2Path.close()
    strokeColor.setStroke()
    bezier2Path.lineWidth = 15
    bezier2Path.lineCapStyle = .round
    bezier2Path.lineJoinStyle = .round
    bezier2Path.stroke()
    
    
    //// Bezier 3 Drawing
    let bezier3Path = UIBezierPath()
    bezier3Path.move(to: CGPoint(x: 353.32, y: 142.5))
    bezier3Path.addLine(to: CGPoint(x: 353.32, y: 127.5))
    bezier3Path.addCurve(to: CGPoint(x: 338.32, y: 112.5), controlPoint1: CGPoint(x: 353.32, y: 119.22), controlPoint2: CGPoint(x: 346.6, y: 112.5))
    bezier3Path.addLine(to: CGPoint(x: 323.32, y: 112.5))
    bezier3Path.addLine(to: CGPoint(x: 323.32, y: 157.5))
    bezier3Path.addLine(to: CGPoint(x: 338.32, y: 157.5))
    bezier3Path.addCurve(to: CGPoint(x: 353.32, y: 142.5), controlPoint1: CGPoint(x: 346.6, y: 157.5), controlPoint2: CGPoint(x: 353.32, y: 150.78))
    bezier3Path.addLine(to: CGPoint(x: 353.32, y: 142.5))
    bezier3Path.close()
    bezier3Path.usesEvenOddFillRule = true
    fillColor.setFill()
    bezier3Path.fill()
    
    
    //// Bezier 4 Drawing
    let bezier4Path = UIBezierPath()
    bezier4Path.move(to: CGPoint(x: 353.32, y: 142.5))
    bezier4Path.addLine(to: CGPoint(x: 353.32, y: 127.5))
    bezier4Path.addCurve(to: CGPoint(x: 338.32, y: 112.5), controlPoint1: CGPoint(x: 353.32, y: 119.22), controlPoint2: CGPoint(x: 346.6, y: 112.5))
    bezier4Path.addLine(to: CGPoint(x: 323.32, y: 112.5))
    bezier4Path.addLine(to: CGPoint(x: 323.32, y: 157.5))
    bezier4Path.addLine(to: CGPoint(x: 338.32, y: 157.5))
    bezier4Path.addCurve(to: CGPoint(x: 353.32, y: 142.5), controlPoint1: CGPoint(x: 346.6, y: 157.5), controlPoint2: CGPoint(x: 353.32, y: 150.78))
    bezier4Path.addLine(to: CGPoint(x: 353.32, y: 142.5))
    bezier4Path.close()
    strokeColor.setStroke()
    bezier4Path.lineWidth = 15
    bezier4Path.lineCapStyle = .round
    bezier4Path.lineJoinStyle = .round
    bezier4Path.stroke()
  }
  func drawBigBasicFilledCloud(){
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 60.05, y: 186))
    bezierPath.addCurve(to: CGPoint(x: 0, y: 126.88), controlPoint1: CGPoint(x: 26.88, y: 186), controlPoint2: CGPoint(x: 0, y: 159.53))
    bezierPath.addCurve(to: CGPoint(x: 36.55, y: 72.46), controlPoint1: CGPoint(x: 0, y: 102.44), controlPoint2: CGPoint(x: 15.06, y: 81.46))
    bezierPath.addCurve(to: CGPoint(x: 79.91, y: 35.93), controlPoint1: CGPoint(x: 39.81, y: 51.77), controlPoint2: CGPoint(x: 57.98, y: 35.93))
    bezierPath.addCurve(to: CGPoint(x: 98.26, y: 39.87), controlPoint1: CGPoint(x: 86.46, y: 35.93), controlPoint2: CGPoint(x: 92.68, y: 37.34))
    bezierPath.addCurve(to: CGPoint(x: 168.59, y: 0), controlPoint1: CGPoint(x: 112.34, y: 16.03), controlPoint2: CGPoint(x: 138.56, y: 0))
    bezierPath.addCurve(to: CGPoint(x: 249.78, y: 75.92), controlPoint1: CGPoint(x: 212.09, y: 0), controlPoint2: CGPoint(x: 247.6, y: 33.63))
    bezierPath.addCurve(to: CGPoint(x: 294, y: 130.29), controlPoint1: CGPoint(x: 275.09, y: 81.47), controlPoint2: CGPoint(x: 294, y: 103.71))
    bezierPath.addCurve(to: CGPoint(x: 237.42, y: 186), controlPoint1: CGPoint(x: 294, y: 161.06), controlPoint2: CGPoint(x: 268.67, y: 186))
    bezierPath.addCurve(to: CGPoint(x: 236.96, y: 186), controlPoint1: CGPoint(x: 237.26, y: 186), controlPoint2: CGPoint(x: 237.11, y: 186))
    bezierPath.addLine(to: CGPoint(x: 60.05, y: 186))
    bezierPath.addLine(to: CGPoint(x: 60.05, y: 186))
    bezierPath.close()
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()

  }
  func drawOutlinedCloud(){
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 59.03, y: 105.58))
    bezierPath.addCurve(to: CGPoint(x: 41.13, y: 111.72), controlPoint1: CGPoint(x: 53.95, y: 109.54), controlPoint2: CGPoint(x: 47.71, y: 111.72))
    bezierPath.addCurve(to: CGPoint(x: 12, y: 82.55), controlPoint1: CGPoint(x: 25.04, y: 111.72), controlPoint2: CGPoint(x: 12, y: 98.66))
    bezierPath.addCurve(to: CGPoint(x: 41.13, y: 53.38), controlPoint1: CGPoint(x: 12, y: 66.44), controlPoint2: CGPoint(x: 25.04, y: 53.38))
    bezierPath.addCurve(to: CGPoint(x: 45.2, y: 53.66), controlPoint1: CGPoint(x: 42.51, y: 53.38), controlPoint2: CGPoint(x: 43.86, y: 53.47))
    bezierPath.addLine(to: CGPoint(x: 50.21, y: 54.36))
    bezierPath.addLine(to: CGPoint(x: 51.75, y: 49.54))
    bezierPath.addCurve(to: CGPoint(x: 103.13, y: 12), controlPoint1: CGPoint(x: 58.83, y: 27.36), controlPoint2: CGPoint(x: 79.5, y: 12))
    bezierPath.addCurve(to: CGPoint(x: 157.07, y: 66), controlPoint1: CGPoint(x: 132.92, y: 12), controlPoint2: CGPoint(x: 157.07, y: 36.18))
    bezierPath.addCurve(to: CGPoint(x: 157, y: 68.66), controlPoint1: CGPoint(x: 157.07, y: 66.89), controlPoint2: CGPoint(x: 157.05, y: 67.77))
    bezierPath.addLine(to: CGPoint(x: 156.6, y: 77.02))
    bezierPath.addLine(to: CGPoint(x: 164.65, y: 74.71))
    bezierPath.addCurve(to: CGPoint(x: 169.27, y: 74.07), controlPoint1: CGPoint(x: 166.13, y: 74.29), controlPoint2: CGPoint(x: 167.68, y: 74.07))
    bezierPath.addCurve(to: CGPoint(x: 186, y: 90.83), controlPoint1: CGPoint(x: 178.51, y: 74.07), controlPoint2: CGPoint(x: 186, y: 81.57))
    bezierPath.addCurve(to: CGPoint(x: 169.27, y: 107.59), controlPoint1: CGPoint(x: 186, y: 100.08), controlPoint2: CGPoint(x: 178.51, y: 107.59))
    bezierPath.addCurve(to: CGPoint(x: 155.21, y: 99.92), controlPoint1: CGPoint(x: 163.52, y: 107.59), controlPoint2: CGPoint(x: 158.28, y: 104.67))
    bezierPath.addLine(to: CGPoint(x: 150.66, y: 92.89))
    bezierPath.addLine(to: CGPoint(x: 145.46, y: 99.47))
    bezierPath.addCurve(to: CGPoint(x: 103.13, y: 120), controlPoint1: CGPoint(x: 135.29, y: 112.35), controlPoint2: CGPoint(x: 119.85, y: 120))
    bezierPath.addCurve(to: CGPoint(x: 66.77, y: 105.88), controlPoint1: CGPoint(x: 89.48, y: 120), controlPoint2: CGPoint(x: 76.64, y: 114.91))
    bezierPath.addLine(to: CGPoint(x: 63.02, y: 102.45))
    bezierPath.addLine(to: CGPoint(x: 59.03, y: 105.58))
    bezierPath.addLine(to: CGPoint(x: 59.03, y: 105.58))
    bezierPath.close()
    bezierPath.move(to: CGPoint(x: 66.41, y: 115.04))
    bezierPath.addLine(to: CGPoint(x: 58.67, y: 114.73))
    bezierPath.addCurve(to: CGPoint(x: 103.13, y: 132), controlPoint1: CGPoint(x: 70.73, y: 125.77), controlPoint2: CGPoint(x: 86.45, y: 132))
    bezierPath.addCurve(to: CGPoint(x: 154.88, y: 106.9), controlPoint1: CGPoint(x: 123.56, y: 132), controlPoint2: CGPoint(x: 142.46, y: 122.63))
    bezierPath.addLine(to: CGPoint(x: 145.14, y: 106.44))
    bezierPath.addCurve(to: CGPoint(x: 169.27, y: 119.59), controlPoint1: CGPoint(x: 150.39, y: 114.57), controlPoint2: CGPoint(x: 159.41, y: 119.59))
    bezierPath.addCurve(to: CGPoint(x: 198, y: 90.83), controlPoint1: CGPoint(x: 185.14, y: 119.59), controlPoint2: CGPoint(x: 198, y: 106.71))
    bezierPath.addCurve(to: CGPoint(x: 169.27, y: 62.07), controlPoint1: CGPoint(x: 198, y: 74.95), controlPoint2: CGPoint(x: 185.14, y: 62.07))
    bezierPath.addCurve(to: CGPoint(x: 161.34, y: 63.18), controlPoint1: CGPoint(x: 166.56, y: 62.07), controlPoint2: CGPoint(x: 163.9, y: 62.44))
    bezierPath.addLine(to: CGPoint(x: 163, y: 68.95))
    bezierPath.addLine(to: CGPoint(x: 168.99, y: 69.24))
    bezierPath.addCurve(to: CGPoint(x: 169.07, y: 66), controlPoint1: CGPoint(x: 169.04, y: 68.16), controlPoint2: CGPoint(x: 169.07, y: 67.08))
    bezierPath.addCurve(to: CGPoint(x: 103.13, y: 0), controlPoint1: CGPoint(x: 169.07, y: 29.55), controlPoint2: CGPoint(x: 139.55, y: 0))
    bezierPath.addCurve(to: CGPoint(x: 40.32, y: 45.89), controlPoint1: CGPoint(x: 74.24, y: 0), controlPoint2: CGPoint(x: 48.97, y: 18.77))
    bezierPath.addLine(to: CGPoint(x: 46.03, y: 47.72))
    bezierPath.addLine(to: CGPoint(x: 46.86, y: 41.78))
    bezierPath.addCurve(to: CGPoint(x: 41.13, y: 41.38), controlPoint1: CGPoint(x: 44.97, y: 41.51), controlPoint2: CGPoint(x: 43.06, y: 41.38))
    bezierPath.addCurve(to: CGPoint(x: 0, y: 82.55), controlPoint1: CGPoint(x: 18.41, y: 41.38), controlPoint2: CGPoint(x: 0, y: 59.81))
    bezierPath.addCurve(to: CGPoint(x: 41.13, y: 123.72), controlPoint1: CGPoint(x: 0, y: 105.29), controlPoint2: CGPoint(x: 18.41, y: 123.72))
    bezierPath.addCurve(to: CGPoint(x: 66.41, y: 115.04), controlPoint1: CGPoint(x: 50.41, y: 123.72), controlPoint2: CGPoint(x: 59.24, y: 120.63))
    bezierPath.addLine(to: CGPoint(x: 66.41, y: 115.04))
    bezierPath.close()
    fillColor.setFill()
    bezierPath.fill()
  }
  func drawOutlinedLongCloud(){
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 167.5, y: 107.9))
    bezierPath.addCurve(to: CGPoint(x: 138, y: 120), controlPoint1: CGPoint(x: 159.69, y: 115.61), controlPoint2: CGPoint(x: 149.2, y: 120))
    bezierPath.addCurve(to: CGPoint(x: 103.68, y: 102.22), controlPoint1: CGPoint(x: 124.19, y: 120), controlPoint2: CGPoint(x: 111.51, y: 113.29))
    bezierPath.addLine(to: CGPoint(x: 101.13, y: 98.61))
    bezierPath.addLine(to: CGPoint(x: 96.94, y: 99.97))
    bezierPath.addCurve(to: CGPoint(x: 84, y: 102), controlPoint1: CGPoint(x: 92.8, y: 101.31), controlPoint2: CGPoint(x: 88.45, y: 102))
    bezierPath.addCurve(to: CGPoint(x: 70.98, y: 99.94), controlPoint1: CGPoint(x: 79.52, y: 102), controlPoint2: CGPoint(x: 75.14, y: 101.3))
    bezierPath.addLine(to: CGPoint(x: 67.93, y: 98.95))
    bezierPath.addLine(to: CGPoint(x: 65.41, y: 100.94))
    bezierPath.addCurve(to: CGPoint(x: 45, y: 108), controlPoint1: CGPoint(x: 59.63, y: 105.49), controlPoint2: CGPoint(x: 52.51, y: 108))
    bezierPath.addCurve(to: CGPoint(x: 12, y: 75), controlPoint1: CGPoint(x: 26.77, y: 108), controlPoint2: CGPoint(x: 12, y: 93.23))
    bezierPath.addCurve(to: CGPoint(x: 42.77, y: 42.07), controlPoint1: CGPoint(x: 12, y: 57.6), controlPoint2: CGPoint(x: 25.51, y: 43.22))
    bezierPath.addLine(to: CGPoint(x: 45.97, y: 41.86))
    bezierPath.addLine(to: CGPoint(x: 47.57, y: 39.08))
    bezierPath.addCurve(to: CGPoint(x: 84, y: 18), controlPoint1: CGPoint(x: 55.02, y: 26.14), controlPoint2: CGPoint(x: 68.8, y: 18))
    bezierPath.addCurve(to: CGPoint(x: 103.8, y: 22.95), controlPoint1: CGPoint(x: 91.01, y: 18), controlPoint2: CGPoint(x: 97.77, y: 19.72))
    bezierPath.addLine(to: CGPoint(x: 107.44, y: 24.9))
    bezierPath.addLine(to: CGPoint(x: 110.56, y: 22.2))
    bezierPath.addCurve(to: CGPoint(x: 138, y: 12), controlPoint1: CGPoint(x: 118.14, y: 15.66), controlPoint2: CGPoint(x: 127.78, y: 12))
    bezierPath.addCurve(to: CGPoint(x: 173.4, y: 31.38), controlPoint1: CGPoint(x: 152.5, y: 12), controlPoint2: CGPoint(x: 165.72, y: 19.4))
    bezierPath.addLine(to: CGPoint(x: 176.18, y: 35.73))
    bezierPath.addLine(to: CGPoint(x: 180.9, y: 33.63))
    bezierPath.addCurve(to: CGPoint(x: 198, y: 30), controlPoint1: CGPoint(x: 186.23, y: 31.25), controlPoint2: CGPoint(x: 192.02, y: 30))
    bezierPath.addCurve(to: CGPoint(x: 240, y: 72), controlPoint1: CGPoint(x: 221.2, y: 30), controlPoint2: CGPoint(x: 240, y: 48.8))
    bezierPath.addCurve(to: CGPoint(x: 198, y: 114), controlPoint1: CGPoint(x: 240, y: 95.2), controlPoint2: CGPoint(x: 221.2, y: 114))
    bezierPath.addCurve(to: CGPoint(x: 175, y: 107.15), controlPoint1: CGPoint(x: 189.71, y: 114), controlPoint2: CGPoint(x: 181.78, y: 111.6))
    bezierPath.addLine(to: CGPoint(x: 170.95, y: 104.49))
    bezierPath.addLine(to: CGPoint(x: 167.5, y: 107.9))
    bezierPath.addLine(to: CGPoint(x: 167.5, y: 107.9))
    bezierPath.close()
    bezierPath.move(to: CGPoint(x: 175.93, y: 116.44))
    bezierPath.addLine(to: CGPoint(x: 168.42, y: 117.19))
    bezierPath.addCurve(to: CGPoint(x: 198, y: 126), controlPoint1: CGPoint(x: 177.14, y: 122.9), controlPoint2: CGPoint(x: 187.35, y: 126))
    bezierPath.addCurve(to: CGPoint(x: 252, y: 72), controlPoint1: CGPoint(x: 227.82, y: 126), controlPoint2: CGPoint(x: 252, y: 101.82))
    bezierPath.addCurve(to: CGPoint(x: 198, y: 18), controlPoint1: CGPoint(x: 252, y: 42.18), controlPoint2: CGPoint(x: 227.82, y: 18))
    bezierPath.addCurve(to: CGPoint(x: 176, y: 22.67), controlPoint1: CGPoint(x: 190.33, y: 18), controlPoint2: CGPoint(x: 182.87, y: 19.61))
    bezierPath.addLine(to: CGPoint(x: 183.5, y: 24.91))
    bezierPath.addCurve(to: CGPoint(x: 138, y: 0), controlPoint1: CGPoint(x: 173.64, y: 9.52), controlPoint2: CGPoint(x: 156.63, y: 0))
    bezierPath.addCurve(to: CGPoint(x: 102.71, y: 13.12), controlPoint1: CGPoint(x: 124.87, y: 0), controlPoint2: CGPoint(x: 112.45, y: 4.71))
    bezierPath.addLine(to: CGPoint(x: 109.47, y: 12.37))
    bezierPath.addCurve(to: CGPoint(x: 84, y: 6), controlPoint1: CGPoint(x: 101.7, y: 8.21), controlPoint2: CGPoint(x: 93, y: 6))
    bezierPath.addCurve(to: CGPoint(x: 37.17, y: 33.09), controlPoint1: CGPoint(x: 64.46, y: 6), controlPoint2: CGPoint(x: 46.74, y: 16.47))
    bezierPath.addLine(to: CGPoint(x: 41.97, y: 30.1))
    bezierPath.addCurve(to: CGPoint(x: 0, y: 75), controlPoint1: CGPoint(x: 18.42, y: 31.67), controlPoint2: CGPoint(x: 0, y: 51.28))
    bezierPath.addCurve(to: CGPoint(x: 45, y: 120), controlPoint1: CGPoint(x: 0, y: 99.85), controlPoint2: CGPoint(x: 20.15, y: 120))
    bezierPath.addCurve(to: CGPoint(x: 72.83, y: 110.36), controlPoint1: CGPoint(x: 55.23, y: 120), controlPoint2: CGPoint(x: 64.96, y: 116.57))
    bezierPath.addLine(to: CGPoint(x: 69.12, y: 105.65))
    bezierPath.addLine(to: CGPoint(x: 67.26, y: 111.35))
    bezierPath.addCurve(to: CGPoint(x: 84, y: 114), controlPoint1: CGPoint(x: 72.62, y: 113.1), controlPoint2: CGPoint(x: 78.25, y: 114))
    bezierPath.addCurve(to: CGPoint(x: 100.63, y: 111.39), controlPoint1: CGPoint(x: 89.71, y: 114), controlPoint2: CGPoint(x: 95.3, y: 113.11))
    bezierPath.addLine(to: CGPoint(x: 98.78, y: 105.68))
    bezierPath.addLine(to: CGPoint(x: 93.88, y: 109.15))
    bezierPath.addCurve(to: CGPoint(x: 138, y: 132), controlPoint1: CGPoint(x: 103.94, y: 123.37), controlPoint2: CGPoint(x: 120.25, y: 132))
    bezierPath.addCurve(to: CGPoint(x: 175.93, y: 116.44), controlPoint1: CGPoint(x: 152.38, y: 132), controlPoint2: CGPoint(x: 165.89, y: 126.34))
    bezierPath.addLine(to: CGPoint(x: 175.93, y: 116.44))
    bezierPath.close()
    fillColor.setFill()
    bezierPath.fill()

  }
  func drawMidLongCloud(){
    //// General Declarations
    let context = UIGraphicsGetCurrentContext()!
    
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    context.saveGState()
    context.setBlendMode(.lighten)
    
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 159.44, y: 151.17))
    bezierPath.addCurve(to: CGPoint(x: 121.04, y: 149.46), controlPoint1: CGPoint(x: 146.84, y: 154.29), controlPoint2: CGPoint(x: 133.6, y: 153.77))
    bezierPath.addCurve(to: CGPoint(x: 93.88, y: 132.06), controlPoint1: CGPoint(x: 110.56, y: 145.87), controlPoint2: CGPoint(x: 101.32, y: 139.9))
    bezierPath.addLine(to: CGPoint(x: 87.28, y: 125.1))
    bezierPath.addLine(to: CGPoint(x: 80.71, y: 132.1))
    bezierPath.addCurve(to: CGPoint(x: 42.49, y: 141.57), controlPoint1: CGPoint(x: 71.04, y: 142.41), controlPoint2: CGPoint(x: 56.11, y: 146.24))
    bezierPath.addCurve(to: CGPoint(x: 20.07, y: 95.78), controlPoint1: CGPoint(x: 23.6, y: 135.09), controlPoint2: CGPoint(x: 13.57, y: 114.59))
    bezierPath.addCurve(to: CGPoint(x: 66.04, y: 73.44), controlPoint1: CGPoint(x: 26.57, y: 76.96), controlPoint2: CGPoint(x: 47.15, y: 66.96))
    bezierPath.addCurve(to: CGPoint(x: 66.14, y: 73.47), controlPoint1: CGPoint(x: 66.09, y: 73.46), controlPoint2: CGPoint(x: 66.09, y: 73.46))
    bezierPath.addLine(to: CGPoint(x: 75.21, y: 76.62))
    bezierPath.addLine(to: CGPoint(x: 77.81, y: 67.4))
    bezierPath.addCurve(to: CGPoint(x: 79, y: 63.6), controlPoint1: CGPoint(x: 78.17, y: 66.13), controlPoint2: CGPoint(x: 78.57, y: 64.86))
    bezierPath.addCurve(to: CGPoint(x: 165.2, y: 21.72), controlPoint1: CGPoint(x: 91.2, y: 28.32), controlPoint2: CGPoint(x: 129.79, y: 9.57))
    bezierPath.addCurve(to: CGPoint(x: 207.56, y: 64.53), controlPoint1: CGPoint(x: 185.51, y: 28.69), controlPoint2: CGPoint(x: 200.97, y: 44.58))
    bezierPath.addLine(to: CGPoint(x: 212.84, y: 80.52))
    bezierPath.addLine(to: CGPoint(x: 223.26, y: 67.27))
    bezierPath.addCurve(to: CGPoint(x: 263.51, y: 55.44), controlPoint1: CGPoint(x: 232.69, y: 55.29), controlPoint2: CGPoint(x: 248.82, y: 50.4))
    bezierPath.addCurve(to: CGPoint(x: 285.93, y: 101.24), controlPoint1: CGPoint(x: 282.4, y: 61.92), controlPoint2: CGPoint(x: 292.43, y: 82.42))
    bezierPath.addCurve(to: CGPoint(x: 239.96, y: 123.57), controlPoint1: CGPoint(x: 279.43, y: 120.05), controlPoint2: CGPoint(x: 258.85, y: 130.05))
    bezierPath.addCurve(to: CGPoint(x: 239.28, y: 123.33), controlPoint1: CGPoint(x: 239.62, y: 123.45), controlPoint2: CGPoint(x: 239.62, y: 123.45))
    bezierPath.addLine(to: CGPoint(x: 228.68, y: 119.46))
    bezierPath.addLine(to: CGPoint(x: 227.2, y: 130.61))
    bezierPath.addCurve(to: CGPoint(x: 225.53, y: 137.67), controlPoint1: CGPoint(x: 226.88, y: 132.99), controlPoint2: CGPoint(x: 226.33, y: 135.35))
    bezierPath.addCurve(to: CGPoint(x: 179.55, y: 160.01), controlPoint1: CGPoint(x: 219.02, y: 156.49), controlPoint2: CGPoint(x: 198.44, y: 166.49))
    bezierPath.addCurve(to: CGPoint(x: 167.57, y: 153.12), controlPoint1: CGPoint(x: 175.09, y: 158.48), controlPoint2: CGPoint(x: 171.04, y: 156.14))
    bezierPath.addLine(to: CGPoint(x: 164.01, y: 150.03))
    bezierPath.addLine(to: CGPoint(x: 159.44, y: 151.17))
    bezierPath.addLine(to: CGPoint(x: 159.44, y: 151.17))
    bezierPath.close()
    bezierPath.move(to: CGPoint(x: 163.81, y: 168.65))
    bezierPath.addLine(to: CGPoint(x: 161.63, y: 159.91))
    bezierPath.addLine(to: CGPoint(x: 155.68, y: 166.7))
    bezierPath.addCurve(to: CGPoint(x: 173.67, y: 177.04), controlPoint1: CGPoint(x: 160.91, y: 171.23), controlPoint2: CGPoint(x: 166.99, y: 174.75))
    bezierPath.addCurve(to: CGPoint(x: 242.62, y: 143.54), controlPoint1: CGPoint(x: 202, y: 186.76), controlPoint2: CGPoint(x: 232.87, y: 171.76))
    bezierPath.addCurve(to: CGPoint(x: 245.13, y: 132.96), controlPoint1: CGPoint(x: 243.82, y: 140.08), controlPoint2: CGPoint(x: 244.65, y: 136.54))
    bezierPath.addLine(to: CGPoint(x: 236.16, y: 131.79))
    bezierPath.addLine(to: CGPoint(x: 233.05, y: 140.24))
    bezierPath.addCurve(to: CGPoint(x: 234.07, y: 140.6), controlPoint1: CGPoint(x: 233.56, y: 140.43), controlPoint2: CGPoint(x: 233.56, y: 140.43))
    bezierPath.addCurve(to: CGPoint(x: 303.03, y: 107.1), controlPoint1: CGPoint(x: 262.4, y: 150.32), controlPoint2: CGPoint(x: 293.28, y: 135.32))
    bezierPath.addCurve(to: CGPoint(x: 269.4, y: 38.41), controlPoint1: CGPoint(x: 312.78, y: 78.88), controlPoint2: CGPoint(x: 297.73, y: 48.13))
    bezierPath.addCurve(to: CGPoint(x: 209.03, y: 56.16), controlPoint1: CGPoint(x: 247.36, y: 30.85), controlPoint2: CGPoint(x: 223.18, y: 38.18))
    bezierPath.addLine(to: CGPoint(x: 224.73, y: 58.9))
    bezierPath.addCurve(to: CGPoint(x: 171.08, y: 4.69), controlPoint1: CGPoint(x: 216.4, y: 33.65), controlPoint2: CGPoint(x: 196.81, y: 13.51))
    bezierPath.addCurve(to: CGPoint(x: 61.91, y: 57.73), controlPoint1: CGPoint(x: 126.23, y: -10.7), controlPoint2: CGPoint(x: 77.35, y: 13.05))
    bezierPath.addCurve(to: CGPoint(x: 60.4, y: 62.53), controlPoint1: CGPoint(x: 61.36, y: 59.32), controlPoint2: CGPoint(x: 60.85, y: 60.92))
    bezierPath.addLine(to: CGPoint(x: 69.11, y: 64.97))
    bezierPath.addLine(to: CGPoint(x: 72.07, y: 56.46))
    bezierPath.addCurve(to: CGPoint(x: 71.93, y: 56.41), controlPoint1: CGPoint(x: 72, y: 56.43), controlPoint2: CGPoint(x: 72, y: 56.43))
    bezierPath.addCurve(to: CGPoint(x: 2.97, y: 89.91), controlPoint1: CGPoint(x: 43.6, y: 46.69), controlPoint2: CGPoint(x: 12.72, y: 61.69))
    bezierPath.addCurve(to: CGPoint(x: 36.6, y: 158.6), controlPoint1: CGPoint(x: -6.78, y: 118.13), controlPoint2: CGPoint(x: 8.27, y: 148.89))
    bezierPath.addCurve(to: CGPoint(x: 93.92, y: 144.4), controlPoint1: CGPoint(x: 57.03, y: 165.61), controlPoint2: CGPoint(x: 79.42, y: 159.85))
    bezierPath.addLine(to: CGPoint(x: 80.74, y: 144.44))
    bezierPath.addCurve(to: CGPoint(x: 115.16, y: 166.5), controlPoint1: CGPoint(x: 90.18, y: 154.38), controlPoint2: CGPoint(x: 101.9, y: 161.95))
    bezierPath.addCurve(to: CGPoint(x: 163.81, y: 168.65), controlPoint1: CGPoint(x: 131.04, y: 171.95), controlPoint2: CGPoint(x: 147.85, y: 172.61))
    bezierPath.addLine(to: CGPoint(x: 163.81, y: 168.65))
    bezierPath.close()
    fillColor.setFill()
    bezierPath.fill()
    
    context.restoreGState()

  }
  func drawIndentedBottomCloud(){
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 228.88, y: 60))
    bezierPath.addCurve(to: CGPoint(x: 144, y: 0), controlPoint1: CGPoint(x: 216.27, y: 24.33), controlPoint2: CGPoint(x: 182.45, y: 0))
    bezierPath.addCurve(to: CGPoint(x: 59.12, y: 60), controlPoint1: CGPoint(x: 105.55, y: 0), controlPoint2: CGPoint(x: 71.73, y: 24.33))
    bezierPath.addLine(to: CGPoint(x: 67.61, y: 63))
    bezierPath.addLine(to: CGPoint(x: 67.63, y: 54))
    bezierPath.addCurve(to: CGPoint(x: 67.5, y: 54), controlPoint1: CGPoint(x: 67.56, y: 54), controlPoint2: CGPoint(x: 67.56, y: 54))
    bezierPath.addCurve(to: CGPoint(x: 0, y: 121.5), controlPoint1: CGPoint(x: 30.22, y: 54), controlPoint2: CGPoint(x: 0, y: 84.22))
    bezierPath.addCurve(to: CGPoint(x: 67.5, y: 189), controlPoint1: CGPoint(x: 0, y: 158.78), controlPoint2: CGPoint(x: 30.22, y: 189))
    bezierPath.addCurve(to: CGPoint(x: 115.12, y: 169.34), controlPoint1: CGPoint(x: 85.58, y: 189), controlPoint2: CGPoint(x: 102.56, y: 181.84))
    bezierPath.addLine(to: CGPoint(x: 104.85, y: 171.06))
    bezierPath.addCurve(to: CGPoint(x: 144, y: 180), controlPoint1: CGPoint(x: 116.96, y: 176.92), controlPoint2: CGPoint(x: 130.27, y: 180))
    bezierPath.addCurve(to: CGPoint(x: 183.15, y: 171.06), controlPoint1: CGPoint(x: 157.73, y: 180), controlPoint2: CGPoint(x: 171.04, y: 176.92))
    bezierPath.addLine(to: CGPoint(x: 172.88, y: 169.34))
    bezierPath.addCurve(to: CGPoint(x: 220.5, y: 189), controlPoint1: CGPoint(x: 185.44, y: 181.84), controlPoint2: CGPoint(x: 202.42, y: 189))
    bezierPath.addCurve(to: CGPoint(x: 288, y: 121.5), controlPoint1: CGPoint(x: 257.78, y: 189), controlPoint2: CGPoint(x: 288, y: 158.78))
    bezierPath.addCurve(to: CGPoint(x: 220.5, y: 54), controlPoint1: CGPoint(x: 288, y: 84.22), controlPoint2: CGPoint(x: 257.78, y: 54))
    bezierPath.addCurve(to: CGPoint(x: 220.37, y: 54), controlPoint1: CGPoint(x: 220.44, y: 54), controlPoint2: CGPoint(x: 220.44, y: 54))
    bezierPath.addLine(to: CGPoint(x: 220.39, y: 63))
    bezierPath.addLine(to: CGPoint(x: 228.88, y: 60))
    bezierPath.addLine(to: CGPoint(x: 228.88, y: 60))
    bezierPath.close()
    bezierPath.move(to: CGPoint(x: 211.91, y: 66))
    bezierPath.addLine(to: CGPoint(x: 214.03, y: 72.01))
    bezierPath.addLine(to: CGPoint(x: 220.41, y: 72))
    bezierPath.addCurve(to: CGPoint(x: 220.5, y: 72), controlPoint1: CGPoint(x: 220.45, y: 72), controlPoint2: CGPoint(x: 220.45, y: 72))
    bezierPath.addCurve(to: CGPoint(x: 270, y: 121.5), controlPoint1: CGPoint(x: 247.84, y: 72), controlPoint2: CGPoint(x: 270, y: 94.16))
    bezierPath.addCurve(to: CGPoint(x: 220.5, y: 171), controlPoint1: CGPoint(x: 270, y: 148.84), controlPoint2: CGPoint(x: 247.84, y: 171))
    bezierPath.addCurve(to: CGPoint(x: 185.58, y: 156.58), controlPoint1: CGPoint(x: 207.22, y: 171), controlPoint2: CGPoint(x: 194.8, y: 165.76))
    bezierPath.addLine(to: CGPoint(x: 181.05, y: 152.08))
    bezierPath.addLine(to: CGPoint(x: 175.31, y: 154.86))
    bezierPath.addCurve(to: CGPoint(x: 144, y: 162), controlPoint1: CGPoint(x: 165.63, y: 159.54), controlPoint2: CGPoint(x: 155, y: 162))
    bezierPath.addCurve(to: CGPoint(x: 112.69, y: 154.86), controlPoint1: CGPoint(x: 133, y: 162), controlPoint2: CGPoint(x: 122.37, y: 159.54))
    bezierPath.addLine(to: CGPoint(x: 106.95, y: 152.08))
    bezierPath.addLine(to: CGPoint(x: 102.42, y: 156.58))
    bezierPath.addCurve(to: CGPoint(x: 67.5, y: 171), controlPoint1: CGPoint(x: 93.2, y: 165.76), controlPoint2: CGPoint(x: 80.78, y: 171))
    bezierPath.addCurve(to: CGPoint(x: 18, y: 121.5), controlPoint1: CGPoint(x: 40.16, y: 171), controlPoint2: CGPoint(x: 18, y: 148.84))
    bezierPath.addCurve(to: CGPoint(x: 67.5, y: 72), controlPoint1: CGPoint(x: 18, y: 94.16), controlPoint2: CGPoint(x: 40.16, y: 72))
    bezierPath.addCurve(to: CGPoint(x: 67.59, y: 72), controlPoint1: CGPoint(x: 67.55, y: 72), controlPoint2: CGPoint(x: 67.55, y: 72))
    bezierPath.addLine(to: CGPoint(x: 73.97, y: 72.01))
    bezierPath.addLine(to: CGPoint(x: 76.09, y: 66))
    bezierPath.addCurve(to: CGPoint(x: 144, y: 18), controlPoint1: CGPoint(x: 86.18, y: 37.47), controlPoint2: CGPoint(x: 113.24, y: 18))
    bezierPath.addCurve(to: CGPoint(x: 211.91, y: 66), controlPoint1: CGPoint(x: 174.76, y: 18), controlPoint2: CGPoint(x: 201.82, y: 37.47))
    bezierPath.addLine(to: CGPoint(x: 211.91, y: 66))
    bezierPath.close()
    fillColor.setFill()
    bezierPath.fill()

  }
  func drawLargeFilledCloud(){
    //// Color Declarations
    let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
    
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 202.79, y: 206.67))
    bezierPath.addLine(to: CGPoint(x: 72.61, y: 206.67))
    bezierPath.addCurve(to: CGPoint(x: 0, y: 134.05), controlPoint1: CGPoint(x: 32.51, y: 206.67), controlPoint2: CGPoint(x: 0, y: 174.16))
    bezierPath.addCurve(to: CGPoint(x: 72.61, y: 61.44), controlPoint1: CGPoint(x: 0, y: 93.95), controlPoint2: CGPoint(x: 32.51, y: 61.44))
    bezierPath.addCurve(to: CGPoint(x: 106.16, y: 69.64), controlPoint1: CGPoint(x: 84.71, y: 61.44), controlPoint2: CGPoint(x: 96.12, y: 64.4))
    bezierPath.addCurve(to: CGPoint(x: 203.87, y: 0), controlPoint1: CGPoint(x: 120.13, y: 29.11), controlPoint2: CGPoint(x: 158.6, y: 0))
    bezierPath.addCurve(to: CGPoint(x: 307.21, y: 103.33), controlPoint1: CGPoint(x: 260.94, y: 0), controlPoint2: CGPoint(x: 307.21, y: 46.26))
    bezierPath.addCurve(to: CGPoint(x: 307.15, y: 106.83), controlPoint1: CGPoint(x: 307.21, y: 104.5), controlPoint2: CGPoint(x: 307.19, y: 105.67))
    bezierPath.addCurve(to: CGPoint(x: 335.14, y: 153.6), controlPoint1: CGPoint(x: 323.81, y: 115.78), controlPoint2: CGPoint(x: 335.14, y: 133.37))
    bezierPath.addCurve(to: CGPoint(x: 282.07, y: 206.67), controlPoint1: CGPoint(x: 335.14, y: 182.91), controlPoint2: CGPoint(x: 311.38, y: 206.67))
    bezierPath.addLine(to: CGPoint(x: 203.87, y: 206.67))
    bezierPath.addCurve(to: CGPoint(x: 202.79, y: 206.67), controlPoint1: CGPoint(x: 203.71, y: 206.67), controlPoint2: CGPoint(x: 202.79, y: 206.67))
    bezierPath.addLine(to: CGPoint(x: 203.87, y: 206.67))
    bezierPath.addLine(to: CGPoint(x: 202.79, y: 206.67))
    bezierPath.close()
    bezierPath.usesEvenOddFillRule = true
    fillColor.setFill()
    bezierPath.fill()
  }
  
  override public func draw(_ rect: CGRect){
    
    switch cloudType{
    case .filledSmallCloud: drawFilledSmallCloud()
    case .partialLeftAndFullRightCloud: drawPartialLeftAndFullRightCloud()
    case .basicOutlineCloud: drawBasicOutlineCloud()
      
    case .rightAirpodCloud: drawRightAirpodCloud()
    case .leftAirpodCloud: drawLeftAirpodCloud()
    
    case.bigBasicFilledCloud: drawBigBasicFilledCloud()
    case .outlinedCloud : drawOutlinedCloud()
    case .outlinedLongCloud: drawOutlinedLongCloud()
    case .midLongCloud: drawMidLongCloud()
    case .indentedBottomCloud : drawIndentedBottomCloud()
    case .largeFilledCloud : drawLargeFilledCloud()
    }
  }
}
