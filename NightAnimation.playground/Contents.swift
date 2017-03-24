//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let w : CGFloat = 799
let h : CGFloat = 1260

var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.1560676694, green: 0.163968116, blue: 0.2117111683, alpha: 1)
PlaygroundPage.current.liveView = view

//470 base dots!

var dotArray : [UIView] = []

for i in 0..<470{
  let randX = Int(arc4random_uniform(UInt32(w)))
  let randY = Int(arc4random_uniform(UInt32(h)))
  
  let newDot : UIView = UIView(frame: CGRect(x: randX, y: randY, width: 5, height: 5))
  newDot.backgroundColor = .white
  newDot.clipsToBounds = true
  newDot.layer.cornerRadius = newDot.frame.width / 2.0
  
  view.addSubview(newDot)
  dotArray.append(newDot)
  
}

let leftStartingX = 0.2077596996 * w
let bothStartingY = 0.1158730159 * h
let rightStartingX = 0.7834793492 * w
let leftInnerStartingX = 0.2321652065 * w
let rightInnterStartingX = 0.7590738423 * w
let innerStartingY = 0.1571428571 * h

func addLongVert(startingX : CGFloat, startingY : CGFloat, startingDotIndex : Int, count : Int){
  for i in startingDotIndex..<startingDotIndex+count{
    let curY = startingY + CGFloat((i - startingDotIndex) * (5 + 5))
    UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseOut], animations: {
      dotArray[i].frame = CGRect(x: startingX, y: curY, width: 5, height: 5)
    }, completion: nil)
    
    //  dotArray[i].frame =
  }
}

addLongVert(startingX: leftStartingX, startingY: bothStartingY, startingDotIndex: 0, count : 85)
addLongVert(startingX: rightStartingX, startingY: bothStartingY, startingDotIndex: 85, count : 85)

//Add Inner Vertical Lines
addLongVert(startingX: leftInnerStartingX, startingY: innerStartingY,startingDotIndex: 170, count : 76)
addLongVert(startingX: rightInnterStartingX, startingY: innerStartingY,startingDotIndex: 246, count : 76)
