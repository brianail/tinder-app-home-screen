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
    
    let bottomStackViewSubviews: [UIView] = [UIColor.black, .systemPink, .magenta, .green, .orange].map { color -> UIView in
      let view = UIView()
      view.backgroundColor = color
      return view
    }
    
    bottomStackViewSubviews.forEach { view in
      self.addArrangedSubview(view)
    }
    
    self.distribution = .fillEqually
    self.heightAnchor.constraint(equalToConstant: 120).isActive = true
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
