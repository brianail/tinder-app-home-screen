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
    let topStackViewSubviews: [UIView] = [UIColor.black, .systemPink, .magenta].map { color -> UIView in
      let view = UIView()
      view.backgroundColor = color
      return view
    }
    topStackViewSubviews.forEach(addArrangedSubview(_:))
    self.distribution = .fillEqually
    self.heightAnchor.constraint(equalToConstant: 120).isActive = true
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
