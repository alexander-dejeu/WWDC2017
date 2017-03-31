import UIKit

extension Cloud {
  func moveCloudAnimation(from dir : dir, shift : CGFloat){
    UIView.animate(withDuration: 3.0, animations: {
      switch dir {
      case .left:
         self.frame = CGRect(x: self.frame.minX + shift, y: self.frame.minY, width: self.frame.width, height: self.frame.height)
      case .right:
         self.frame = CGRect(x: self.frame.minX - shift, y: self.frame.minY, width: self.frame.width, height: self.frame.height)
      }
    })
  }
  
  func shiftCloudToStarting(dir : dir, shift : CGFloat){
    switch dir{
    case .left:
      self.frame = CGRect(x: self.frame.minX - shift, y: self.frame.minY, width: self.frame.width, height: self.frame.height)
    case .right:
      self.frame = CGRect(x: self.frame.minX + shift, y: self.frame.minY, width: self.frame.width, height: self.frame.height)
    }
  }
}

public enum dir{
  case left
  case right
}

open class AirPodScene : UIView {
  
  var group1L : [Cloud] = []
  var group2L : [Cloud] = []
  var group3L : [Cloud] = []
  
  var group1R : [Cloud] = []
  var group2R : [Cloud] = []
  var group3R : [Cloud] = []
  
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
  
  override public init(frame : CGRect){
    super.init(frame: frame)
    
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
    
    
    self.addSubview(smallCloud)
    self.addSubview(doubleCloud)
    self.addSubview(singleCenterCloud)
    self.addSubview(singleLeftCloud)
    self.addSubview(bigFillCloud)
    self.addSubview(fatLeftLongCloud)
    self.addSubview(filledSmallRightCloud)
    self.addSubview(rightAirPodCloud)
    self.addSubview(leftAirPodCloud)
    self.addSubview(tripleBumpCloud)
    self.addSubview(largestCloud)
    self.addSubview(longRightCloud)
    
    sendCloudsToStartingPosition()

    let displaylink = CADisplayLink(target: self,
                                    selector: #selector(step))
    displaylink.add(to: .current,
                    forMode: .defaultRunLoopMode)
  }
  
  var startDisplayLinkTime : Double = -1
  var endTimeStamp : Double = 0
  var stageOneFlag = -1
  var stageTwoFlag = -1
  var stageThreeFlag = -1
  
  func step(displaylink: CADisplayLink) {
    if startDisplayLinkTime == -1{
      startDisplayLinkTime = displaylink.timestamp
      endTimeStamp = 12 + startDisplayLinkTime
    }
    let curTimeStamp = displaylink.timestamp
    
    let percentToEnd = (curTimeStamp - startDisplayLinkTime) / (endTimeStamp - startDisplayLinkTime)
    
    if percentToEnd >= 1.0{
       displaylink.remove(from: .current, forMode: .defaultRunLoopMode)
    }
    
    if percentToEnd >= 0.0 && stageOneFlag == -1{
      stageOneFlag = 1
      print("animate stage one!")
      for cloud in group1L{
        cloud.moveCloudAnimation(from: .left, shift: self.frame.width)
      }
      for cloud in group1R{
        cloud.moveCloudAnimation(from: .right, shift: self.frame.width)
      }
    }
    if percentToEnd >= 0.333333 && stageTwoFlag == -1{
      stageTwoFlag = 1
      print("animate stage two!")
      for cloud in group2L{
        cloud.moveCloudAnimation(from: .left, shift: self.frame.width)
      }
      for cloud in group2R{
        cloud.moveCloudAnimation(from: .right, shift: self.frame.width)
      }
    }
    if percentToEnd >= 0.666666 && stageThreeFlag == -1{
      stageThreeFlag = 1
      print("Animate stage three!")
      for cloud in group3L{
        cloud.moveCloudAnimation(from: .left, shift: self.frame.width)
      }
      for cloud in group3R{
        cloud.moveCloudAnimation(from: .right, shift: self.frame.width)
      }
    }
  }

  
  
  func sendCloudsToStartingPosition(){
    let w = self.frame.width
    group1L = [doubleCloud, bigFillCloud]
    group2L = [singleCenterCloud, singleLeftCloud]
    group3L = [smallCloud, leftAirPodCloud, tripleBumpCloud]
    
    group1R = [fatLeftLongCloud,longRightCloud]
    group2R = [rightAirPodCloud, largestCloud]
    group3R = [filledSmallRightCloud]
    smallCloud.shiftCloudToStarting(dir: .left, shift : w)
    doubleCloud.shiftCloudToStarting(dir: .left, shift: w)
    singleCenterCloud.shiftCloudToStarting(dir: .left, shift: w)
    bigFillCloud.shiftCloudToStarting(dir: .left, shift: w)
    singleLeftCloud.shiftCloudToStarting(dir: .left, shift: w)
    
    fatLeftLongCloud.shiftCloudToStarting(dir: .right, shift: w)
    filledSmallRightCloud.shiftCloudToStarting(dir: .right, shift: w)
    filledSmallRightCloud.shiftCloudToStarting(dir: .right, shift: w)
    leftAirPodCloud.shiftCloudToStarting(dir: .left, shift: w)
    rightAirPodCloud.shiftCloudToStarting(dir: .right, shift: w)
    tripleBumpCloud.shiftCloudToStarting(dir: .left, shift: w)
    largestCloud.shiftCloudToStarting(dir: .right, shift: w)
    longRightCloud.shiftCloudToStarting(dir: .right, shift: w)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

