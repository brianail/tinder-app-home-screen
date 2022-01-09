//
//  HomeTopStackView.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class HomeTopStackView: UIStackView {

  override init(frame: CGRect) {
    
    super.init(frame: frame)
    
    let topStackViewSubviews: [UIButton] = [UIImage(named: "user"), .init(named: "fire"), .init(named: "chat")].map { image -> UIButton in
      let button = UIButton(type: .custom)
      button.setImage(image, for: .normal)
      return button
    }
    
    topStackViewSubviews.forEach(addArrangedSubview(_:))
    
    self.distribution = .fillEqually
    self.heightAnchor.constraint(equalToConstant: 120).isActive = true
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
