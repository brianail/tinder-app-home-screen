//
//  HomeBottomStackView.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class HomeBottomStackView: UIStackView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    let icons: [UIImage?] = [.init(named: "reload"), .init(named: "close"), .init(named: "super-like"), .init(named: "like"), .init(named: "power")]
    
    let bottomStackViewSubviews: [UIButton] = icons.map { image -> UIButton in
      let button = UIButton(type: .custom)
      button.setImage(image, for: .normal)
      return button
    }
    
    bottomStackViewSubviews.forEach { view in
      self.addArrangedSubview(view)
    }
    
    self.distribution = .fillEqually
    self.heightAnchor.constraint(equalToConstant: 100).isActive = true
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
