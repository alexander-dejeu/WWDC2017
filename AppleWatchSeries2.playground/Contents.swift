//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let w : CGFloat = 799
let h : CGFloat = 1260

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.2862745098, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
PlaygroundPage.current.liveView = view

class incrementalLabel : UILabel {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  func commonInit(){
    print("Do we get here>")
    timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
  }
  func setProperties(borderWidth: Float, borderColor: UIColor) {
//    self.layer.borderWidth = CGFloat(borderWidth)
//    self.layer.borderColor = borderColor.CGColor
  }
  
  var counter = 0
  var timer = Timer()

  
  func timerAction() {
    print("What about here?")
    if counter >= 10{
      timer.invalidate()
      return
    }
    counter += 1
    self.text = "\(counter)"
    
  }
  
  // start the timer
}

let timeLabel = incrementalLabel(frame: CGRect(x: 200, y: 200, width: 200, height: 200))
view.addSubview(timeLabel)







