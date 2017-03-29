//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport



let w : CGFloat = 599
let h : CGFloat = 945
var view = UIView(frame: CGRect(x: 0, y: 0, width: w, height: h))
view.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.7529411765, blue: 0.2588235294, alpha: 1)
PlaygroundPage.current.liveView = view

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


view.addSubview(smallCloud)
view.addSubview(doubleCloud)
view.addSubview(singleCenterCloud)
view.addSubview(singleLeftCloud)
view.addSubview(bigFillCloud)
view.addSubview(fatLeftLongCloud)
view.addSubview(filledSmallRightCloud)
view.addSubview(rightAirPodCloud)
view.addSubview(leftAirPodCloud)
view.addSubview(tripleBumpCloud)
view.addSubview(largestCloud)
view.addSubview(longRightCloud)

//let leftAirPod : AirPod = AirPod(frame: CGRect(x: 0, y: 0, width: 164, height: 360))
//leftAirPod.backgroundColor = .white
//view.addSubview(leftAirPod)
