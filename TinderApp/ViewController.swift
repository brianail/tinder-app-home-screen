//
//  ViewController.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let topStackViewSubviews: [UIView] = [UIColor.black, .systemPink, .magenta].map { color -> UIView in
      let view = UIView()
      view.backgroundColor = color
      return view
    }
    
    let topStackView = UIStackView(arrangedSubviews: topStackViewSubviews)
    
    let blueView = UIView()
    blueView.backgroundColor = .blue
    
    let bottomStackViewSubviews: [UIView] = [UIColor.black, .systemPink, .magenta, .green, .orange].map { color -> UIView in
      let view = UIView()
      view.backgroundColor = color
      return view
    }
    
    let bottomStackView = UIStackView(arrangedSubviews: bottomStackViewSubviews)
    
    
  }


}

