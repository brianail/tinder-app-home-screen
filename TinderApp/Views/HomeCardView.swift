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
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  

}
