//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

open class AYearAtApple : UIView {
  
  var appleWatchScene = WatchScene(frame: CGRect(x: 0, y: 0, width: 599, height: 945))
  let night = NightSky(frame : CGRect(x: 0, y: 0, width: 599, height: 945))
  var airpodScene = AirPodScene(frame: CGRect(x: 0, y: 0, width: 599, height: 945))
  var concludeScene = ConcludeScene(frame: CGRect(x: 0, y: 0, width: 599, height: 945))
  
  
  override public init(frame : CGRect){
    super.init(frame: frame)
    appleWatchScene.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
    appleWatchScene.backgroundColor = #colorLiteral(red: 0.2862745098, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
    appleWatchScene.alpha = 0
    self.addSubview(appleWatchScene)
    
    night.frame = CGRect(x: 0, y: -self.frame.height, width: self.frame.width, height: self.frame.height)
    night.alpha = 0
    self.addSubview(night)
    
    airpodScene.backgroundColor = .clear
    self.addSubview(airpodScene)
    
    concludeScene.backgroundColor = .white
    concludeScene.frame = CGRect(x: 0 - self.frame.width, y: 0, width: self.frame.width, height: self.frame.height)
    self.addSubview(concludeScene)
    
    
    let displaylink = CADisplayLink(target: self,
                                    selector: #selector(step))
    displaylink.add(to: .current,
                    forMode: .defaultRunLoopMode)
    watchTransition()
  }
  
  var startDisplayLinkTime : Double = -1
  var endTimeStamp : Double = -1
  
  var nightStarted = false
  var airpodsStarted = false
  var concludeStarted = false
  
  func step(displaylink: CADisplayLink) {
    if appleWatchScene.done && !nightStarted{
      nightStarted = true
      // Fade out the actual watch
      appleWatchScene.fadeOutWatch()
      iPhoneTransition()
      // Have the night sky slide up and fade in
    }
    
    if night.done && !airpodsStarted {
      print("Night done")
      airpodsStarted = true
      airpodScene.addSunAndAnimate()
    }
    
    if airpodScene.done && !concludeStarted{
      concludeStarted = true
      concludeTransition()
      
    }
    
//    if startDisplayLinkTime == -1{
//      startDisplayLinkTime = displaylink.timestamp
//      endTimeStamp = 12 + startDisplayLinkTime
//    }
//    
//    let curTimeStamp = displaylink.timestamp
//    
//    let percentToEnd = (curTimeStamp - startDisplayLinkTime) / (endTimeStamp - startDisplayLinkTime)
//    
//    let denominator : Double = 12
//    // Because we are rounding I am shifting it back by a half an hour :)
//    standPercent = round((standPercent - (1.0 / 24.0))*denominator )/denominator
//    print("Stand : \(standPercent)")
//
//    
//    
//    if percentToEnd >= 1.0{
//      displaylink.remove(from: .current, forMode: .defaultRunLoopMode)
//    }
    
  }
  
  func concludeTransition(){
    UIView.animate(withDuration: 1.5, animations: {
      self.concludeScene.frame = CGRect(x: 0, y: 0, width: self.concludeScene.frame.width, height: self.concludeScene.frame.height)
    }, completion: { boolean in
      self.concludeScene.start()
    })
  }
  
  func airpodTransition(){
    
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  func iPhoneTransition(){
    UIView.animate(withDuration: 1.0, animations: {
      self.appleWatchScene.alpha = 1
    })
    UIView.animate(withDuration: 1.0, animations: {
      self.night.frame = CGRect(x: 0, y: 0, width: self.night.frame.width, height: self.night.frame.height)
      self.night.alpha = 1
    }, completion: { boolean in
      self.night.start()
    })
  }
  func watchTransition(){
    UIView.animate(withDuration: 1.0, animations: {
      self.appleWatchScene.alpha = 1
    })
  }
  
}
let w : CGFloat = 599
let h : CGFloat = 945

let view = AYearAtApple(frame: CGRect(x: 0, y: 0, width: w, height: h))
PlaygroundPage.current.liveView = view




//var jetBlackiPhoneScene = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
//
//

//PlaygroundPage.current.liveView = airpodScene


//let leftAirPod : AirPod = AirPod(frame: CGRect(x: 0, y: 0, width: 164, height: 360))
//leftAirPod.backgroundColor = .white
//view.addSubview(leftAirPod)
