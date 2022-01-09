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
    
    let icons: [UIImage?] = [.init(named: "user"), .init(named: "fire"), .init(named: "chat")]
    
    let topStackViewSubviews: [UIButton] = icons.map { image -> UIButton in
      let button = UIButton(type: .custom)
      // we could also set image.withRenderingMode(.alwaysOriginal)
      button.setImage(image, for: .normal)
      return button
    }
    
    topStackViewSubviews.forEach(addArrangedSubview(_:))
    
    self.distribution = .fillEqually
    self.heightAnchor.constraint(equalToConstant: 80).isActive = true
    /*
     self.layoutMargins = .init(top: 16, left: 0, bottom: 16, right: 0)
     self.isLayoutMarginsRelativeArrangement = true
     */
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
