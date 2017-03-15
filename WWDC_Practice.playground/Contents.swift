//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import GameKit

let view = UIView(frame: CGRect(x: 0, y: 0, width: 256, height: 256))
view.backgroundColor = .black
PlaygroundPage.current.liveView = view

func getSingleCharacterLayer(c: Character, font : UIFont) -> CATextLayer {
  let layer = CATextLayer()
  layer.frame = CGRect(x: 0, y: 0, width: 10, height: 20)
  layer.font = font
  layer.fontSize = 12
  layer.string = String(c)
  return layer
}

let random = GKMersenneTwisterRandomSource()
let colors : [UIColor] = [#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)]

func getRandomCharacterLayer(s: String, font : UIFont) -> CATextLayer {
  let randomIndex = random.nextInt(upperBound: s.characters.count)
  let character = s.characters[s.index(s.startIndex, offsetBy: randomIndex)]
  let layer = getSingleCharacterLayer(c: character, font: font)
  layer.foregroundColor = colors[random.nextInt(upperBound: colors.count)].cgColor
  return layer
}

let characterSet = "!@#$%^&*()-=+{}[]|\\;:<>?/~'\""

var height : CGFloat = 0
let font = UIFont(name: "Menlo", size: 32)
repeat {
  var width : CGFloat = 0
  repeat {
    let charLayer = getRandomCharacterLayer(s: characterSet, font: font!)
    charLayer.frame = CGRect(x: width, y: height, width: 8, height: 12)
    view.layer.addSublayer(charLayer)
    
    width += 10.0
  } while( width < view.frame.width)
  height += 18.0
} while (height < view.frame.height)

let imageRenderer = UIGraphicsImageRenderer(bounds: view.frame)
let jpeg = imageRenderer.jpegData(withCompressionQuality: 1.0) { (context) in
  view.layer.render(in: context.cgContext)
  view
}

let maskLayer = CALayer()
maskLayer.frame = view.frame
maskLayer.backgroundColor = UIColor.clear.cgColor

let letterLayer = CATextLayer()
letterLayer.frame = maskLayer.frame
letterLayer.fontSize = 200

letterLayer.alignmentMode = kCAAlignmentCenter
letterLayer.string = "❤️"
maskLayer.addSublayer(letterLayer)

view.layer.mask = maskLayer
view

class Updater {
  let layer : CALayer
  let characters : String
  let font : UIFont
  
  init(l: CALayer, c:String, f: UIFont){
    layer = l
    characters = c
    font = f
  }
  
  @objc func update(){
    let randomIndex = random.nextInt(upperBound: layer.sublayers!.count)
    let sub = layer.sublayers![randomIndex]
    let newSub = getRandomCharacterLayer(s: characters, font: font)
    newSub.frame = sub.frame
    sub.removeFromSuperlayer()
    layer.addSublayer(newSub)
  }
}

let updater = Updater(l: view.layer, c: characterSet, f: font!)
let displayLink = CADisplayLink(target: updater, selector: #selector(Updater.update))
displayLink.add(to: RunLoop.current, forMode: .defaultRunLoopMode)
view




