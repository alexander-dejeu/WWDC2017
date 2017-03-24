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

let outerHoriStartingX = 0.296620776 * w
let topHoriStartingY = 0.06626984127 * h
let bottomHoriStartingY = 0.8337301587 * h

let innerHoriStartingX = 0.2453066333 * w
let innerHoriTopY = 0.1571428571 * h
let innerHoriBottomY = 0.7523809524 * h

func addVert(startingX : CGFloat, startingY : CGFloat, startingDotIndex : Int, count : Int){
  for i in startingDotIndex..<startingDotIndex+count{
    let curY = startingY + CGFloat((i - startingDotIndex) * (5 + 5))
    UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseOut], animations: {
      dotArray[i].frame = CGRect(x: startingX, y: curY, width: 5, height: 5)
    }, completion: nil)
    
    //  dotArray[i].frame =
  }
}

func addHori(startingX : CGFloat, startingY : CGFloat, startingDotIndex : Int, count : Int){
  for i in startingDotIndex..<startingDotIndex+count{
    let curX = startingX + CGFloat((i - startingDotIndex) * (5 + 5))
    UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseOut], animations: {
      dotArray[i].frame = CGRect(x: curX, y: startingY, width: 5, height: 5)
    }, completion: nil)
  }
}

addVert(startingX: leftStartingX, startingY: bothStartingY, startingDotIndex: 0, count : 85)
addVert(startingX: rightStartingX, startingY: bothStartingY, startingDotIndex: 85, count : 85)

//Add Inner Vertical Lines
addVert(startingX: leftInnerStartingX, startingY: innerStartingY,startingDotIndex: 170, count : 76)
addVert(startingX: rightInnterStartingX, startingY: innerStartingY,startingDotIndex: 246, count : 76)

addHori(startingX: outerHoriStartingX, startingY: topHoriStartingY, startingDotIndex: 322, count: 33)
addHori(startingX: outerHoriStartingX, startingY: bottomHoriStartingY, startingDotIndex: 355, count: 33)

addHori(startingX: innerHoriStartingX, startingY: innerHoriTopY, startingDotIndex: 388, count: 41)
addHori(startingX: innerHoriStartingX, startingY: innerHoriBottomY, startingDotIndex: 429, count: 41)



