//: Playground - noun: a place where people can play


// coolPhrase : [UILabel] -->
// Look at each label - based on chars before you add the enxt word.

// Going to have to add a shit load of dots
// As you add them have them start random walking around :P

// Make groups for the correctly colored dots

// Go through the different groups and have them move to their final positions and stop random walking

// when done? Throught the image in? 

// Then add the thank you text 
// Add the github link? 


//var dataBool : Bool? = true
//var tokenBook : Bool? = true
//
//if let data = dataBool,  let token = tokenBook{
//  print(data)
//  print(token)
//}

// Create a dot with a speed and angle using arc tan
// Then apply a sin func to change it? 

// X += Target * Rate
import UIKit

open class sampleDot:  UIView {
  var color : UIColor = .black{
    didSet{
      self.backgroundColor = color
    }
  }
  
  var angle : Double = 0
  var speed : Double = 100
  var rotationalSpeed : Double = 10
  // Where we are at in sin curve
  var t : Double = 0
  // Incremental value
  var i : Double = 0.1
  
  override public init(frame: CGRect){
    super.init(frame: frame)
    self.backgroundColor = color
    self.layer.cornerRadius = self.frame.width / 2.0
  }
  
  open func update(delta : CFTimeInterval){
    // Pixals per sec is speed * delta
    t += i
    angle += rotationalSpeed * sin(t) * delta
    
    var xCord = cos(angle) * speed * delta
    var yCord = sin(angle) * speed * delta
    
    self.center.x += CGFloat(xCord.truncatingRemainder(dividingBy: 599))
    self.center.y += CGFloat(yCord.truncatingRemainder(dividingBy: 945))
    
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

//

class randomWalkDot : UIView {
  var color : UIColor = .black{
    didSet{
      self.backgroundColor = color
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = color
    self.layer.cornerRadius = self.frame.width / 2.0
    
    let displaylink = CADisplayLink(target: self,
                                    selector: #selector(randomWalk))
    displaylink.add(to: .current,
                    forMode: .defaultRunLoopMode)
    
  }
  
  var startDisplayLinkTime : Double = -1
  var endTimeStamp : Double = 0
  var lastRecordedMove : Double = 0
  var lastMoveDuration : Double = 0
  
  func randomWalk(displaylink: CADisplayLink) {
    if startDisplayLinkTime == -1{
    startDisplayLinkTime = displaylink.timestamp
    endTimeStamp = 8 + startDisplayLinkTime
    lastRecordedMove = startDisplayLinkTime
    }
    
    
    let curTimeStamp = displaylink.timestamp
    
    let percentToEnd = (curTimeStamp - startDisplayLinkTime) / (endTimeStamp - startDisplayLinkTime)
    
    if lastRecordedMove + lastMoveDuration > curTimeStamp{
      let randomX : CGFloat = CGFloat(Int(arc4random_uniform(30)) - 15)
      let randomY : CGFloat = CGFloat(Int(arc4random_uniform(30)) - 15)
      
      //get the distance between the destination position and the node's position
      let distance : Double = sqrt(pow((Double(randomX)), 2.0) + pow((Double(randomY)), 2.0));
      
      //calculate your new duration based on the distance
      let moveDuration = 0.001*distance;
      lastMoveDuration = moveDuration
      print(moveDuration)
      
        
        UIView.animate(withDuration: moveDuration, animations: {
          self.frame = CGRect(x: self.frame.minX + randomX, y: self.frame.minY + randomY, width: self.frame.width, height: self.frame.height)
        })

    }
    
    
    if percentToEnd >= 1.0{
      displaylink.remove(from: .current, forMode: .defaultRunLoopMode)
    }
    
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class concludeScene : UIView{
  
  var allDots : [sampleDot] = []
  var blueIndexs : [Int] = []
  var greenIndexs : [Int] = []
  var orangeIndexs : [Int] = []
  var redIndexs : [Int] = []
  var purpleIndexs : [Int] = []
  var yellowIndexs : [Int] = []
  
  let green = #colorLiteral(red: 0.4784313725, green: 0.6823529412, blue: 0.2196078431, alpha: 1)
  let greenCount = 62
  let orange = #colorLiteral(red: 0.8549019608, green: 0.5333333333, blue: 0.1921568627, alpha: 1)
  let orangeCount = 42
  let yellow = #colorLiteral(red: 0.9411764706, green: 0.737254902, blue: 0.2666666667, alpha: 1)
  let yellowCount = 42
  let red = #colorLiteral(red: 0.7137254902, green: 0.231372549, blue: 0.2235294118, alpha: 1)
  let redCount = 44
  let blue = #colorLiteral(red: 0.2392156863, green: 0.5529411765, blue: 0.7882352941, alpha: 1)
  let blueCount = 35
  let purple = #colorLiteral(red: 0.4862745098, green: 0.1960784314, blue: 0.4352941176, alpha: 1)
  let purpleCount = 42
  
  var possibleColors : [UIColor] = []
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    possibleColors = [green, orange, yellow, red, blue, purple]
    self.backgroundColor = UIColor.blue
    let displaylink = CADisplayLink(target: self,
                                    selector: #selector(updateDots))
    displaylink.add(to: .current,
                    forMode: .defaultRunLoopMode)
    
    var greenC = 0
    var blueC = 0
    var redC = 0
    var yellowC = 0
    var orangeC = 0
    var purpleC = 0
    
    for i in 0..<267{
      let randX = Int(arc4random_uniform(UInt32(self.frame.width)))
      let randY = Int(arc4random_uniform(UInt32(self.frame.height)))
      
      let newDot : sampleDot = sampleDot(frame: CGRect(x: Double(randX), y: Double(randY), width: 15, height: 15))
      
      let randColorIndex = Int(arc4random_uniform(UInt32(possibleColors.count)))
      let color = possibleColors[randColorIndex]
      switch color{
      case green:
        greenC += 1
        greenIndexs.append(i)
        if greenC == greenCount{
          possibleColors.remove(at: randColorIndex)
        }
      case blue:
        blueC += 1
        blueIndexs.append(i)
        if blueC == blueCount{
          possibleColors.remove(at: randColorIndex)
        }
      case red:
        redC += 1
        redIndexs.append(i)
        if redC == redCount{
          possibleColors.remove(at: randColorIndex)
        }
      case yellow:
        yellowC += 1
        yellowIndexs.append(i)
        if yellowC == yellowCount{
          possibleColors.remove(at: randColorIndex)
        }
      case purple:
        purpleC += 1
        purpleIndexs.append(i)
        if purpleC == purpleCount{
          possibleColors.remove(at: randColorIndex)
        }
      case orange:
        orangeC += 1
        orangeIndexs.append(i)
        if orangeC == orangeCount{
          possibleColors.remove(at: randColorIndex)
        }
      default:
        break
      }
      
      newDot.backgroundColor = color
      newDot.clipsToBounds = true
      newDot.layer.cornerRadius = newDot.frame.width / 2.0
      
      allDots.append(newDot)
      
    }

    
  }
  
  var startDisplayLinkTime : Double = -1
  var endTimeStamp : Double = 0
  var viewsAddedCounter = 0
  
  func updateDots(displaylink: CADisplayLink){
//    callUpdateDots(dots: allDots, delta: 1.0/60.0)
    if startDisplayLinkTime == -1{
      startDisplayLinkTime = displaylink.timestamp
      endTimeStamp = 12 + startDisplayLinkTime
    }
    let curTimeStamp = displaylink.timestamp
    
    let percentToEnd = (curTimeStamp - startDisplayLinkTime) / (endTimeStamp - startDisplayLinkTime)
    
    if percentToEnd >= 1.0 &&  viewsAddedCounter >= 267{
      displaylink.remove(from: .current, forMode: .defaultRunLoopMode)
      animateBlue()
      
    }
    
    
    let totalViewCount : Double = 267
    // Add the right amount of views!
    let amountToShow = totalViewCount * percentToEnd
    
    while viewsAddedCounter < Int(amountToShow){
      if viewsAddedCounter >= allDots.count{
        return
      }
      self.addSubview(allDots[viewsAddedCounter])
      viewsAddedCounter += 1
    }

    
  }
  
  func callUpdateDots(dots : [sampleDot], delta : Double){
    for dot in dots{
      dot.update(delta: delta)
    }
  }
  

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func animateBlue(){
    // Blue Group 35 dots
    print(blueIndexs.count)
    addHori(startingX: 172, startingY: 600, startingDotIndex: 0, count: 12, indexArray : blueIndexs)
    addHori(startingX: 183, startingY: 615, startingDotIndex: 12, count: 11, indexArray : blueIndexs)
    addHori(startingX: 200, startingY: 630, startingDotIndex: 23, count: 4, indexArray : blueIndexs)
    addHori(startingX: 331, startingY: 630, startingDotIndex: 27, count: 4, indexArray : blueIndexs)
    addHori(startingX: 212, startingY: 645, startingDotIndex: 31, count: 2, indexArray : blueIndexs)
    addHori(startingX: 364, startingY: 645, startingDotIndex: 33, count: 2, indexArray : blueIndexs, completionBlock: { boolean in
      self.animatePurple()
    })
    // Top Left - 172, 600....12 dots
    // Mid Left - 183, 615 ... 11 dots
    // PartialLeft - 200, 630... 4
    // partialRight - 331, 630...4
    // minLeft - 212, 645...2
    // minRight - 364, 645...2
  }
  
  func animatePurple(){
    // PurpleGroup 42 Dots
    // TopLeft - 141, 546...15
    // MidLeft - 153, 564...14
    // BottomLeft - 163, 582 ...13
    addHori(startingX: 141, startingY: 546, startingDotIndex: 0, count: 15, indexArray : purpleIndexs)
    addHori(startingX: 153, startingY: 564, startingDotIndex: 15, count: 14, indexArray : purpleIndexs)
    addHori(startingX: 163, startingY: 582, startingDotIndex: 29, count: 13, indexArray : purpleIndexs, completionBlock: { boolean in
      self.animateRed()
    })
  }
  
  func animateRed(){
    // RedGroup 44 Dots
    // TopLeft - 125, 493 ... 14
    // MidLeft - 129, 512 ... 15
    // BottomLeft - 138, 530 ... 15
    addHori(startingX: 125, startingY: 493, startingDotIndex: 0, count: 14, indexArray : redIndexs)
    addHori(startingX: 129, startingY: 512, startingDotIndex: 14, count: 15, indexArray : redIndexs)
    addHori(startingX: 138, startingY: 530, startingDotIndex: 29, count: 15, indexArray : redIndexs, completionBlock: { boolean in
      
      
    })
  }
  
  func animateOrange(){
    // OrangeGroup 42
    // TopLeft - 121, 439 ... 14
    // MidLeft - 120, 458 ... 14
    // BottomLeft - 122, 477 ... 14
    addHori(startingX: 121, startingY: 439, startingDotIndex: 121, count: 14, indexArray : orangeIndexs)
    addHori(startingX: 120, startingY: 458, startingDotIndex: 135, count: 14, indexArray : orangeIndexs)
    addHori(startingX: 122, startingY: 477, startingDotIndex: 151, count: 14, indexArray : orangeIndexs)
  }
  
  func animateYellow(){
    // YellowGroup 42
    // TopLeft - 135, 385 ... 14
    // MiddleLeft - 128, 404 ... 14
    // BottomLeft - 122, 423 ... 14
    addHori(startingX: 135, startingY: 385, startingDotIndex: 165, count: 14, indexArray : yellowIndexs)
    addHori(startingX: 128, startingY: 404, startingDotIndex: 179, count: 14, indexArray : yellowIndexs)
    addHori(startingX: 122, startingY: 423, startingDotIndex: 193, count: 14, indexArray : yellowIndexs)
  }
  
  func animateGreen(){
    // GreenGroup 42
    // BottomLeft - 147, 370 ... 14
    // MiddleLeft - 161, 355 ... 14
    // PartialLeft - 172, 340 ... 5
    // PartialRight - 330, 340 ... 5
    // MinLeft - 205, 325 ... 2
    // Min Right - 365, 325 ... 2
    addHori(startingX: 147, startingY: 370, startingDotIndex: 207, count: 14, indexArray : greenIndexs)
    addHori(startingX: 161, startingY: 355, startingDotIndex: 221, count: 14, indexArray : greenIndexs)
    addHori(startingX: 172, startingY: 340, startingDotIndex: 235, count: 5, indexArray : greenIndexs)
    addHori(startingX: 330, startingY: 340, startingDotIndex: 240, count: 5, indexArray : greenIndexs)
    addHori(startingX: 205, startingY: 325, startingDotIndex: 245, count: 2, indexArray : greenIndexs)
    addHori(startingX: 365, startingY: 325, startingDotIndex: 247, count: 2, indexArray : greenIndexs)
  }
  
  func animateLeaf(){
    //Leaf 20 dots
    let leafX : [CGFloat] = [294, 295, 309, 300, 314, 328, 306, 319, 332, 345, 316, 329, 342, 355, 334, 347, 361, 351, 365, 366]
    let leafY : [CGFloat] = [320, 304, 315, 288, 298, 308, 272, 281, 290, 299, 258, 267, 276, 285, 247, 256, 267, 239, 250, 234]
    
    for i in 0..<leafX.count {
      let curX = leafX[i]
      let curY = leafY[i]
      UIView.animate(withDuration: 2.5, delay: 0.3, options: [.curveEaseOut], animations: {
        self.allDots[self.greenIndexs[i + 42]].frame = CGRect(x: curX, y: curY, width: 15, height: 15)
      }, completion: nil)
    }
  }
  
//  addHori(startingX: 172, startingY: 600, startingDotIndex: 0, count: 12, indexArray : blueIndexs)
//  addHori(startingX: 183, startingY: 615, startingDotIndex: 12, count: 11, indexArray : blueIndexs)
//  addHori(startingX: 200, startingY: 630, startingDotIndex: 23, count: 4, indexArray : blueIndexs)

  func addHori(startingX : CGFloat, startingY : CGFloat, startingDotIndex : Int, count : Int, indexArray : [Int], completionBlock: ((Bool) -> ())? = nil){
    for i in 0..<count{
      let curX = startingX + CGFloat(Double(i) * (7.5 + 15))
      UIView.animate(withDuration: 2.5, delay: 0.3, options: [.curveEaseOut], animations: {
        print("Starting dot index \(startingDotIndex)")
        print("index : \(i + startingDotIndex)")
        self.allDots[indexArray[i + startingDotIndex]].frame = CGRect(x: curX, y: startingY, width: 15, height: 15)
      }, completion: completionBlock)
    }
  }
}



import UIKit
import PlaygroundSupport

let w : CGFloat = 599
let h : CGFloat = 945
var view = concludeScene(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = .white
PlaygroundPage.current.liveView = view
let dotNote : sampleDot = sampleDot(frame: CGRect(x: 50, y: 50, width: 15, height: 15))
view.allDots.append(dotNote)
view.addSubview(dotNote)


// 267 total dots!

// Thank you y cord 694
// SF Light 60
// T H A N K   Y O U





