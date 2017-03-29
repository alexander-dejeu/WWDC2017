import UIKit

public class watchScene : UIView, CAAnimationDelegate{
  
  var sunView = UIView()
  
  public func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
    if self.subviews .contains(sunView){
      sunView.removeFromSuperview()
    }
  }
  
  override public init(frame: CGRect){
    super.init(frame: frame)
    
    let sunPath = UIBezierPath()
    sunPath.move(to: CGPoint(x: 1, y: 246))
    sunPath.addCurve(to: CGPoint(x: 300.5, y: 0.04), controlPoint1: CGPoint(x: 1, y: 246), controlPoint2: CGPoint(x: 152.7, y: -3.63))
    sunPath.addCurve(to: CGPoint(x: 600, y: 246), controlPoint1: CGPoint(x: 450.12, y: 3.75), controlPoint2: CGPoint(x: 600, y: 246))
    
    sunPath.lineWidth = 1
    
    sunView = UIView(frame: CGRect(x: 0.225375626 * self.frame.width, y: 0.2317460317 * self.frame.height, width: 0.2846560847 * self.frame.height, height: 0.2846560847 * self.frame.height))
    sunView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.7529411765, blue: 0.2588235294, alpha: 1)
    sunView.clipsToBounds = true
    sunView.layer.cornerRadius = sunView.frame.width / 2.0
    self.addSubview(sunView)
    
    let anim: CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "position")
    anim.path = sunPath.cgPath
    anim.repeatCount = 1.0
    anim.duration = 12.0
    anim.delegate = self
    sunView.layer.add(anim, forKey: "animate position along path")
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override public func draw(_ rect: CGRect){
    let watchView = customWatchView(frame: CGRect(x: 0, y: 0, width: 344.25, height: 633))
    watchView.backgroundColor = .clear
    watchView.center = self.center
    self.addSubview(watchView)
  }
}

