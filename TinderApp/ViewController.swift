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
    
    let bottomStackView = HomeBottomStackView()
    
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

