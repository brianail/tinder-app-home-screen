//
//  HomeCardView.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class HomeCardView: UIView {
  
  fileprivate let imageView = UIImageView(image: .init(named: "cardImage")!)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    // Custom Drawing Code
    
    addSubview(imageView)
    
    imageView.fillSuperView()
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.layer.cornerRadius = 8.0
    
    let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePlan))
    addGestureRecognizer(panGesture)
  }
  
  @objc fileprivate func handlePlan(gesture: UIPanGestureRecognizer) {
    
    
    switch gesture.state {
    case .ended:
      
      var shouldDismissCard = false
      
      let translation = gesture.translation(in: nil)
      
      if translation.x > 60 || translation.x < -60  {
        shouldDismissCard = true
      }
      
      UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
        if shouldDismissCard {
          self.transform = .init(translationX: (translation.x > 0 ? 1000 : -1000), y: 0)
          
        } else {
          self.transform = .identity // default value
        }
      }) { (_) in
        self.transform = .identity
        self.frame = .init(x: 6, y: 0, width: self.superview!.frame.width, height: self.superview!.frame.height)
      }
      
      
    case.changed:
      
      let translation = gesture.translation(in: nil)
      print(translation.x)
      
      let convertDegreeToRadians = (translation.x / 20) * (Double.pi / 180)
      let rotationalTransformation = CGAffineTransform(rotationAngle: convertDegreeToRadians)
      
      self.transform = rotationalTransformation.translatedBy(x: translation.x, y: 0)
      
      /*if translation.x > 40 || translation.x < -40 {
       should
       }*/
      
    default: () // don't care about this
    }
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
}
