//
//  HomeTopStackView.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class HomeTopStackView: UIStackView {
  
  let userButton = UIButton(type: .custom)
  let fireImageView = UIImageView(image: .init(named: "fire")!)
  let chatButton = UIButton(type: .custom)

  override init(frame: CGRect) {
    
    super.init(frame: frame)
    
    userButton.setImage(UIImage(named: "user"), for: .normal)
    chatButton.setImage(UIImage(named: "chat"), for: .normal)
    fireImageView.contentMode = .scaleAspectFit
    
    self.distribution = .equalCentering
    self.heightAnchor.constraint(equalToConstant: 80).isActive = true
    
    [userButton, fireImageView, chatButton].forEach { view in
      self.addArrangedSubview(view)
    }
    
    self.layoutMargins = .init(top: 0, left: 24, bottom: 0, right: 24)
    self.isLayoutMarginsRelativeArrangement = true
     
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
