import UIKit

open class NightSky : UIView {

  var dotArray : [UIView] = []
  var leftStartingX : CGFloat = 1
  var bothStartingY : CGFloat = 1
  var rightStartingX : CGFloat = 1
  
  var leftInnerStartingX : CGFloat = 1
  var rightInnterStartingX : CGFloat = 1
  var innerStartingY : CGFloat = 1
  
  var outerHoriStartingX : CGFloat = 1
  var topHoriStartingY : CGFloat = 1
  var bottomHoriStartingY : CGFloat = 1
  
  var innerHoriStartingX : CGFloat = 1
  var innerHoriTopY : CGFloat = 1
  var innerHoriBottomY : CGFloat = 1
  
  var homeButtonCenterX : CGFloat = 1
  var homeButtonCenterY : CGFloat = 1
  var homeButtonRadius : CGFloat = 1

  
  override public init(frame: CGRect) {
    super.init(frame: frame)
    let w : CGFloat = self.frame.width
    let h : CGFloat = self.frame.height
    
    leftStartingX = 0.2077596996 * w
    bothStartingY = 0.1158730159 * h
    rightStartingX = 0.7834793492 * w
    
    leftInnerStartingX = 0.2321652065 * w
    rightInnterStartingX = 0.7590738423 * w
    innerStartingY = 0.1571428571 * h
    
    outerHoriStartingX = 0.296620776 * w
    topHoriStartingY = 0.11626984127 * h
    bottomHoriStartingY = 0.8337301587 * h
    
    innerHoriStartingX = 0.2453066333 * w
    innerHoriTopY = 0.1571428571 * h
    innerHoriBottomY = 0.7523809524 * h
    
    homeButtonCenterX = 0.4981226533 * w
    homeButtonCenterY = 0.7944444444 * h
    homeButtonRadius = 0.03015873016 * h
    let displaylink = CADisplayLink(target: self,
                                    selector: #selector(step))
    displaylink.add(to: .current,
                    forMode: .defaultRunLoopMode)
    
    for i in 0..<490{
      let randX = Int(arc4random_uniform(UInt32(w)))
      let randY = Int(arc4random_uniform(UInt32(h)))
      
      let newDot : UIView = UIView(frame: CGRect(x: randX, y: randY, width: 5, height: 5))
      newDot.backgroundColor = .white
      newDot.clipsToBounds = true
      newDot.layer.cornerRadius = newDot.frame.width / 2.0
      
      dotArray.append(newDot)
      
    }
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  var startDisplayLinkTime : Double = -1
  var endTimeStamp : Double = 0
  var viewsAddedCounter = 0
  
  func step(displaylink: CADisplayLink) {
    if startDisplayLinkTime == -1{
      startDisplayLinkTime = displaylink.timestamp
      endTimeStamp = 12 + startDisplayLinkTime
    }
    let curTimeStamp = displaylink.timestamp
    
    let percentToEnd = (curTimeStamp - startDisplayLinkTime) / (endTimeStamp - startDisplayLinkTime)
    print(percentToEnd)
    
    if percentToEnd >= 1.0 &&  viewsAddedCounter >= 490{
      print("Do we crash here?")
      displaylink.remove(from: .current, forMode: .defaultRunLoopMode)
      print("or after?")
//      addVert(startingX: leftStartingX, startingY: bothStartingY, startingDotIndex: 0, count : 85)
//      addVert(startingX: rightStartingX, startingY: bothStartingY, startingDotIndex: 85, count : 85)
//      
//      //Add Inner Vertical Lines
//      addVert(startingX: leftInnerStartingX, startingY: innerStartingY,startingDotIndex: 170, count : 76)
//      addVert(startingX: rightInnterStartingX, startingY: innerStartingY,startingDotIndex: 246, count : 76)
//      
//      addHori(startingX: outerHoriStartingX, startingY: topHoriStartingY, startingDotIndex: 322, count: 33)
//      addHori(startingX: outerHoriStartingX, startingY: bottomHoriStartingY, startingDotIndex: 355, count: 33)
//      
//      addHori(startingX: innerHoriStartingX, startingY: innerHoriTopY, startingDotIndex: 388, count: 41)
//      addHori(startingX: innerHoriStartingX, startingY: innerHoriBottomY, startingDotIndex: 429, count: 41)
//      
//      addCircle(centerX: homeButtonCenterX, centerY: homeButtonCenterY, startingDotIndex: 470, count: 20, sides: 20, radius: Double(homeButtonRadius), rotation: 0)
    }
    
    let totalViewCount : Double = 490
    // Add the right amount of views!
    let amountToShow = totalViewCount * percentToEnd
    
    while viewsAddedCounter <= Int(amountToShow){
      print(viewsAddedCounter)
      if viewsAddedCounter > dotArray.count{
        return
      }
      self.addSubview(dotArray[viewsAddedCounter])
      viewsAddedCounter += 1
    }
  }
  
  func addVert(startingX : CGFloat, startingY : CGFloat, startingDotIndex : Int, count : Int){
    for i in startingDotIndex..<startingDotIndex+count{
      let curY = startingY + CGFloat((i - startingDotIndex) * (5 + 5))
      UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseOut], animations: {
        self.dotArray[i].frame = CGRect(x: startingX, y: curY, width: 5, height: 5)
      }, completion: nil)
    }
  }
  
  func addHori(startingX : CGFloat, startingY : CGFloat, startingDotIndex : Int, count : Int){
    for i in startingDotIndex..<startingDotIndex+count{
      let curX = startingX + CGFloat((i - startingDotIndex) * (5 + 5))
      UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseOut], animations: {
        self.dotArray[i].frame = CGRect(x: curX, y: startingY, width: 5, height: 5)
      }, completion: nil)
    }
  }
  
  func getPolyPoints(sides: Int, radius : Double, rotation : Double, centerX: Double, centerY : Double) -> [CGPoint] {
    /*
     x[n] = r * cos(2*pi*n/N)
     y[n] = r * sin(2*pi*n/N)
     
     If you want a different centre, then just add the coordinates of the centre point to each (x[n], y[n]). If you want a different orientation, you just need to add a constant angle. So the general form is:
     
     x[n] = r * cos(2*pi*n/N + theta) + x_centre
     y[n] = r * sin(2*pi*n/N + theta) + y_centre
     */
    var result : [CGPoint] = []
    
    for i in 0..<sides{
      let x = Double(radius) * cos(2.0 * M_PI * Double(i) / Double(sides) + rotation) + Double(centerX)
      let y = Double(radius) * sin(2.0 * M_PI * Double(i) / Double(sides) + rotation) + Double(centerY)
      result.append(CGPoint(x: x, y: y))
    }
    return result
  }
  
  func addCircle(centerX : CGFloat, centerY : CGFloat, startingDotIndex : Int, count : Int, sides: Int, radius : Double, rotation : Double){
    let points = getPolyPoints(sides: sides, radius: radius, rotation: rotation, centerX: Double(centerX), centerY: Double(centerY))
    
    for i in startingDotIndex..<startingDotIndex+count{
      let curX = points[i - startingDotIndex].x
      let curY = points[i - startingDotIndex].y
      UIView.animate(withDuration: 2.5, delay: 0.3, options: [.curveEaseOut], animations: {
        self.dotArray[i].frame = CGRect(x: curX, y: curY, width: 5, height: 5)
      }, completion: nil)
    }
    
    
  }

  
  
}

