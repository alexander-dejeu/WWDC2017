//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

open class coolUILabel : UILabel{
  public init(frame: CGRect, text : String){
    super.init(frame: frame)
    self.text = text
    self.font = UIFont.systemFont(ofSize: 64, weight: UIFontWeightMedium)
    self.minimumScaleFactor = 0.5
    self.textAlignment = .left
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

open class introScene : UIView{
  public override init(frame: CGRect){
    super.init(frame: frame)
    
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func animateGroup(group : [coolUILabel], closure : @escaping ()->()?){
    for i in 0..<group.count{
      if group.count == 1 {
        group[0].alpha = 0
        self.addSubview(group[0])
          group[i].sizeToFit()
          var str = group[i].text!
          UIView.animate(withDuration: Double(str.characters.count) * 0.1, animations: {
            group[i].textColor = .white
            group[i].alpha = 1
          }, completion : { boolean in
            UIView.animate(withDuration: 0.5, animations: {
              group[0].alpha = 0
            }, completion : { boolean in
              closure()
            })
          })
      }
      group[i].alpha = 0
      self.addSubview(group[i])
      if i == 0{
        group[i].sizeToFit()
        var str = group[i].text!
        UIView.animate(withDuration: Double(str.characters.count) * 0.1, animations: {
          group[i].textColor = .white
          group[i].alpha = 1
        })
      }
      else{
        if i == group.count - 1 {
          group[i].alpha = 0
          group[i].sizeToFit()
          group[i].frame = CGRect(x: group[i-1].frame.maxX + 20, y: group[i-1].frame.minY, width: group[i].frame.width, height: group[i].frame.height)
          self.addSubview(group[i])
          var str = group[i].text!
          var prvStr = group[i-1].text!
          UIView.animate(withDuration: Double(str.characters.count) * 0.1, delay: Double(prvStr.characters.count) * 0.15, animations: {
            group[i].textColor = .white
            group[i].alpha = 1
          }, completion : { boolean in
            for a in 0..<group.count{
              if a == group.count - 1{
                UIView.animate(withDuration: 0.5, animations: {
                  group[a].alpha = 0
                }, completion : { boolean in
                  closure()
                })
              }
              else{
                UIView.animate(withDuration: 0.5, animations: {
                  group[a].alpha = 0
                })
              }
              
            }
          })
        }
        else{
          group[i].alpha = 0
          group[i].sizeToFit()
          group[i].frame = CGRect(x: group[i-1].frame.maxX + 20, y: group[i-1].frame.minY, width: group[i].frame.width, height: group[i].frame.height)
          self.addSubview(group[i])
          var str = group[i].text!
          var prvStr = group[i-1].text!
          UIView.animate(withDuration: Double(str.characters.count) * 0.1, delay: Double(prvStr.characters.count) * 0.15, animations: {
            group[i].textColor = .white
            group[i].alpha = 1
          })
        }
        
      }
    }
  }
}

var hello = coolUILabel(frame: CGRect(x: 132, y: 431, width: 100, height: 100), text: "hello")
var world = coolUILabel(frame: CGRect(x: 100, y: 0, width: 100, height: 100), text: "world,")
var groupOne : [coolUILabel] = [hello,world]

var ifL = coolUILabel(frame: CGRect(x: 107.5, y: 431, width: 100, height: 100), text: "if")
var everyone = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "everyone")
var isL = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "is")
var groupTwo : [coolUILabel] = [ifL,everyone,isL]

var always = coolUILabel(frame: CGRect(x: 39.5, y: 431, width: 100, height: 100), text: "always")
var looking = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "looking")
var forL = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "for")
var groupThree : [coolUILabel] = [always,looking,forL]

var the = coolUILabel(frame: CGRect(x: 13.5, y: 431, width: 100, height: 100), text: "the")
var newest = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "newest,")
var fastest = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "fastest,")
var groupFour : [coolUILabel] = [the,newest,fastest]

var and = coolUILabel(frame: CGRect(x: 108.5, y: 431, width: 100, height: 100), text: "and")
var greatest = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "greatest")
var groupFive : [coolUILabel] = [and,greatest]

var innovations = coolUILabel(frame: CGRect(x: 134, y: 431, width: 100, height: 100), text: "innovations")
var groupSix : [coolUILabel] = [innovations]

var we = coolUILabel(frame: CGRect(x: 23, y: 431, width: 100, height: 100), text: "we")
var never = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "never")
var reflect = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "reflect")
var on = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "on")
var groupSeven : [coolUILabel] = [we,never,reflect,on]

var our = coolUILabel(frame: CGRect(x: 137.5, y: 431, width: 100, height: 100), text: "our")
var current = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "current")
var groupEight : [coolUILabel] = [our,current]

var achievements = coolUILabel(frame: CGRect(x: 90, y: 431, width: 100, height: 100), text: "achievements.")
var groupNine : [coolUILabel] = [achievements]

var apple = coolUILabel(frame: CGRect(x: 139, y: 431, width: 100, height: 100), text: "Apple")
var isL2 = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "is")
var no = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "no")
var groupTen : [coolUILabel] = [apple,isL2,no]

var exception = coolUILabel(frame: CGRect(x: 149, y: 431, width: 100, height: 100), text: "exception.")
var groupEleven : [coolUILabel] = [exception]

var so = coolUILabel(frame: CGRect(x: 28, y: 431, width: 100, height: 100), text: "So")
var lets = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "lets")
var take = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "take")
var a = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "a")
var look = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "look")
var groupTwelve : [coolUILabel] = [so,lets,take,a,look]

var at = coolUILabel(frame: CGRect(x: 94.5, y: 431, width: 100, height: 100), text: "at")
var apple1 = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "Apple")
var since = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "since")
var groupThirteen : [coolUILabel] = [at,apple1,since]

var wwdc = coolUILabel(frame: CGRect(x: 116, y: 431, width: 100, height: 100), text: "WWDC")
var num2016 = coolUILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100), text: "2016")
var groupFourteen : [coolUILabel] = [wwdc,num2016]




let w : CGFloat = 599
let h : CGFloat = 945

let view = introScene(frame: CGRect(x: 0, y: 0, width: w, height: h))
PlaygroundPage.current.liveView = view

view.animateGroup(group: groupOne, closure: {
  view.animateGroup(group: groupTwo, closure: {
    view.animateGroup(group: groupThree, closure: {
      view.animateGroup(group: groupFour, closure: {
        view.animateGroup(group: groupFive, closure: {
          view.animateGroup(group: groupSix, closure: {
            view.animateGroup(group: groupSeven, closure: {
              view.animateGroup(group: groupEight, closure: {
                view.animateGroup(group: groupNine, closure: {
                  view.animateGroup(group: groupTen, closure: {
                    view.animateGroup(group: groupEleven, closure: {
                      view.animateGroup(group: groupTwelve, closure: {
                        view.animateGroup(group: groupThirteen, closure: {
                          view.animateGroup(group: groupFourteen, closure: {
                            return ()
                          })
                        })
                      })
                    })
                  })
                })
              })
            })
          })
        })
      })
    })
  })
})
