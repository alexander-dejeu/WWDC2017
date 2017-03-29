import UIKit

public enum TypeOfShape {
  case circle
  case square
  case hexagon
}

public class animatedShape : UIView {
  
  public init(shape : TypeOfShape, frame : CGRect, delay : Double){
    super.init(frame: frame)
    DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
      switch shape{
      case .circle:
        self.createCircle()
      case .square:
        self.createSquare()
      case .hexagon:
        self.createHexagon()
      }
    })
    
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func scaleOutFade(views : [UIView]){
    let groupAnimation = CAAnimationGroup()
    //groupAnimation.beginTime = CACurrentMediaTime() + 0.5
    groupAnimation.duration = 1.5
    groupAnimation.isRemovedOnCompletion = true
    
    let scaleDown = CABasicAnimation(keyPath: "transform.scale")
    scaleDown.fromValue = 1.0
    scaleDown.toValue = 0.2
    let fade = CABasicAnimation(keyPath: "opacity")
    fade.fromValue = 1.0
    fade.toValue = 0.5
    
    groupAnimation.animations = [scaleDown,fade]
    groupAnimation.repeatCount = 1
    groupAnimation.timingFunction = CAMediaTimingFunction(name: "easeOut")
    for view in views{
      view.layer.add(groupAnimation, forKey: nil)
    }
  }
  
  func animateDotPath(views : [UIView], paths : [UIBezierPath]){
    let dotAnim: CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "position")
    dotAnim.repeatCount = 1
    dotAnim.duration = 1.5
    dotAnim.isRemovedOnCompletion = true
    dotAnim.timingFunction = CAMediaTimingFunction(name: "easeOut")
    if views.count != paths.count{
      return
    }
    for i in 0..<views.count {
      dotAnim.path = paths[i].cgPath
      views[i].layer.add(dotAnim, forKey: "animate_along_path")
    }
  }
  
  func animateLinePath(layers : [CAShapeLayer], paths : [UIBezierPath]){
    var a = CABasicAnimation(keyPath: "strokeEnd")
    a.duration = 1.5
    a.fromValue = 0
    a.timingFunction = CAMediaTimingFunction(name: "easeOut")
    a.toValue = 1
    a.repeatCount = 1
    a.isRemovedOnCompletion = true
    if layers.count != paths.count{
      return
    }
    
    for i in 0..<layers.count {
      layers[i].path = paths[i].cgPath
      layers[i].strokeColor = UIColor.black.cgColor
      layers[i].lineWidth = 2
      layers[i].fillColor = UIColor.clear.cgColor
      layers[i].lineCap = "round"
      
      layers[i].add(a, forKey: "strokeEnd")
    }
  }
  
  func scaleShape(shape : CAShapeLayer, mask : UIBezierPath){
    
    //    let newRadius : CGFloat = 50
    
    //    let newPath: UIBezierPath = UIBezierPath(arcCenter: CGPoint(x: newRadius, y: newRadius), radius: newRadius, startAngle: (CGFloat(-M_PI) / 2.0), endAngle: (3 * CGFloat(M_PI) / 2), clockwise: true);
    
    
    let newBounds : CGRect = CGRect(x: 0, y: 0, width: 2 * shape.bounds.width, height: 2 * shape.bounds.height);
    let pathAnim : CABasicAnimation = CABasicAnimation(keyPath: "path");
    
    mask.apply(CGAffineTransform(scaleX: 3.0, y: 3.0))
    pathAnim.toValue = mask.cgPath;
    
    let boundsAnim : CABasicAnimation = CABasicAnimation(keyPath: "bounds");
    boundsAnim.toValue = NSValue(cgRect: newBounds);
    
    let anims: CAAnimationGroup = CAAnimationGroup();
    anims.animations = [pathAnim, boundsAnim];
    anims.isRemovedOnCompletion = false;
    anims.duration = 2.0;
    anims.fillMode = kCAFillModeForwards;
    
    shape.add(anims, forKey: nil);
  }
  
  func addExitFade(viewPath : UIBezierPath, shape : TypeOfShape = .square){
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.48, execute: {
      print("Add view and go!")
      for subview in self.subviews{
        subview.removeFromSuperview()
      }
      for subLayer in self.layer.sublayers!{
        subLayer.removeFromSuperlayer()
      }
      
      let newView = UIView()
      
      newView.frame = viewPath.bounds
      newView.layer.borderWidth = 1
      newView.layer.borderColor = UIColor.white.cgColor
      newView.clipsToBounds = true
      
      
      if shape == .circle{
        newView.layer.cornerRadius = newView.frame.width / 2.0
      }
      
      let newLayer = CAShapeLayer()
      //      self.layer.addSublayer(newLayer)
      
      newLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
      
      newLayer.backgroundColor = UIColor.white.cgColor
      newLayer.borderWidth = 1
      let mask = CAShapeLayer()
      mask.path = viewPath.cgPath
      newLayer.mask = mask
      
      
      self.addSubview(newView)
      
      UIView.animate(withDuration: 2.0, animations: {
        newView.bounds.size = CGSize(width : self.bounds.size.width * 2.0, height: self.bounds.size.height * 2.0)
        newView.alpha = 0.0
        //        if shape == .circle{
        //          newView.layer.cornerRadius = min(newView.bounds.size.width / 2.0, newView.bounds.size.height / 2.0)
        //        }
      })
      
    })
  }
  
  
  func createCircle(){
    let cirPath1 = UIBezierPath()
    cirPath1.addArc(withCenter: CGPoint(x: self.center.x, y: self.center.y - 50), radius: 50, startAngle:CGFloat(M_PI) / -2, endAngle: CGFloat(M_PI) * 2 - (CGFloat(M_PI) / 2), clockwise: true)
    
    let cirDot1 = makeDot(width: 5, height: 5)
    
    animateDotPath(views: [cirDot1], paths: [cirPath1])
    
    self.addSubview(cirDot1)
    let cirLine1 = CAShapeLayer()
    
    self.layer.addSublayer(cirLine1)
    
    animateLinePath(layers: [cirLine1], paths: [cirPath1])
    
    addExitFade(viewPath: cirPath1, shape : .circle)
  }
  
  func createSquare(){
    let recPoints = getPolyPoints(sides: 4, radius: 50, rotation: 0.25 * M_PI)
    
    let rectPath1 = createBezierPath(startingPoint: recPoints[0], lineSegPoints: [recPoints[1]])
    let rectPath2 = createBezierPath(startingPoint: recPoints[1], lineSegPoints: [recPoints[2]])
    let rectPath3 = createBezierPath(startingPoint: recPoints[2], lineSegPoints: [recPoints[3]])
    let rectPath4 = createBezierPath(startingPoint: recPoints[3], lineSegPoints: [recPoints[0]])
    
    
    let recDot1 = makeDot(width: 5, height: 5)
    let recDot2 = makeDot(width: 5, height: 5)
    let recDot3 = makeDot(width: 5, height: 5)
    let recDot4 = makeDot(width: 5, height: 5)
    
    scaleOutFade(views: [recDot1, recDot2, recDot3, recDot4])
    
    animateDotPath(views : [recDot1, recDot2, recDot3, recDot4], paths : [rectPath1, rectPath2, rectPath3, rectPath4])
    
    let recLine1 = CAShapeLayer()
    let recLine2 = CAShapeLayer()
    let recLine3 = CAShapeLayer()
    let recLine4 = CAShapeLayer()
    
    self.layer.addSublayers(sublayers: [recLine1, recLine2, recLine3, recLine4])
    
    animateLinePath(layers: [recLine1, recLine2, recLine3, recLine4], paths: [rectPath1, rectPath2, rectPath3, rectPath4])
    
    
    self.addSubviews(subviews: [recDot1, recDot2, recDot3, recDot4])
    
    addExitFade(viewPath: createBezierPath(startingPoint: recPoints[0], lineSegPoints: [recPoints[1], recPoints[2], recPoints[3],recPoints[0]]))
  }
  
  func createHexagon(){
    // Get the six points
    let hexPoints = getPolyPoints(sides: 6, radius: 50, rotation: 0.5 * M_PI)
    
    let hexPath1 = createBezierPath(startingPoint: hexPoints[0], lineSegPoints: [hexPoints[1], hexPoints[2]])
    let hexPath2 = createBezierPath(startingPoint: hexPoints[2], lineSegPoints: [hexPoints[3], hexPoints[4]])
    let hexPath3 = createBezierPath(startingPoint: hexPoints[4], lineSegPoints: [hexPoints[5], hexPoints[0]])
    
    
    let hexDot1 = makeDot(width: 5, height: 5)
    let hexDot2 = makeDot(width: 5, height: 5)
    let hexDot3 = makeDot(width: 5, height: 5)
    
    animateDotPath(views: [hexDot1, hexDot2, hexDot3], paths: [hexPath1, hexPath2, hexPath3])
    
    self.addSubviews(subviews: [hexDot1, hexDot2, hexDot3])
    
    
    let hexLine1 = CAShapeLayer()
    let hexLine2 = CAShapeLayer()
    let hexLine3 = CAShapeLayer()
    
    self.layer.addSublayers(sublayers: [hexLine1, hexLine2, hexLine3])
    
    animateLinePath(layers: [hexLine1, hexLine2, hexLine3], paths: [hexPath1, hexPath2, hexPath3])
    
    addExitFade(viewPath: createBezierPath(startingPoint: hexPoints[0], lineSegPoints: [hexPoints[1], hexPoints[2], hexPoints[3], hexPoints[4], hexPoints[5], hexPoints[0]]))
  }
  // Helpers
  func makeDot(width : Double, height : Double) -> UIView{
    let newDot = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
    newDot.backgroundColor = .white
    newDot.clipsToBounds = true
    newDot.layer.cornerRadius = newDot.bounds.width / 2.0
    return newDot
  }
  
  func getPolyPoints(sides: Int, radius : Int, rotation : Double) -> [CGPoint] {
    /*
     x[n] = r * cos(2*pi*n/N)
     y[n] = r * sin(2*pi*n/N)
     where 0 <= n < N. Note that cos and sin here are working in radians, not degrees (this is pretty common in most programming languages).
     
     If you want a different centre, then just add the coordinates of the centre point to each (x[n], y[n]). If you want a different orientation, you just need to add a constant angle. So the general form is:
     
     x[n] = r * cos(2*pi*n/N + theta) + x_centre
     y[n] = r * sin(2*pi*n/N + theta) + y_centre
     */
    var result : [CGPoint] = []
    
    for i in 0..<sides{
      let x = Double(radius) * cos(2.0 * M_PI * Double(i) / Double(sides) + rotation) + Double(self.bounds.midX)
      let y = Double(radius) * sin(2.0 * M_PI * Double(i) / Double(sides) + rotation) + Double(self.bounds.midY)
      
      result.append(CGPoint(x: x, y: y))
    }
    return result
  }
  
  func createBezierPath(startingPoint : CGPoint, lineSegPoints : [CGPoint]) -> UIBezierPath{
    let newBezierPath = UIBezierPath()
    newBezierPath.move(to: startingPoint)
    for point in lineSegPoints{
      newBezierPath.addLine(to: point)
    }
    return newBezierPath
  }
  
}
