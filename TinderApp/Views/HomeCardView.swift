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
    
    let translation = gesture.translation(in: self)
            
    switch gesture.state {
    case .ended:
      UIView.animate(withDuration: 0.35, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: .curveEaseOut) {
        self.transform = .identity // default value
        //.init(translationX: 0, y: 0)
      }
    case.changed:
      self.transform = .init(translationX: translation.x, y: translation.y)
    default: () // don't care about this
    }
        
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
}
