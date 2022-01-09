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
    
    let topStackView = HomeTopStackView()
    
    let blueView = UIView()
    blueView.backgroundColor = .blue
    
    let bottomStackViewSubviews: [UIView] = [UIColor.black, .systemPink, .magenta, .green, .orange].map { color -> UIView in
      let view = UIView()
      view.backgroundColor = color
      return view
    }
    
    let bottomStackView = UIStackView(arrangedSubviews: bottomStackViewSubviews)
    bottomStackView.distribution = .fillEqually
    bottomStackView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    
    let stackView = UIStackView(arrangedSubviews: [topStackView, blueView, bottomStackView])
    stackView.axis = .vertical
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: view.topAnchor),
      stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
    
    
  }


}

