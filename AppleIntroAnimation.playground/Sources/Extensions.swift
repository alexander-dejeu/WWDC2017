import UIKit

public extension UIView {
  func addSubviews(subviews : [UIView]){
    for subview in subviews{
      self.addSubview(subview)
    }
  }
}

public extension CALayer {
  func addSublayers(sublayers : [CALayer]){
    for sublayer in sublayers{
      self.addSublayer(sublayer)
    }
  }
}
