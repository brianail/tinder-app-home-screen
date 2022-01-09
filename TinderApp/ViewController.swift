//
//  ViewController.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class ViewController: UIViewController {
  
  let topStackView = HomeTopStackView()
  let blueView = UIView()
  let bottomStackView = HomeBottomStackView()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    blueView.backgroundColor = .blue
    setupLayout()
    
  }
  
  // MARK: Fileprivate
  
  fileprivate func setupLayout() { // can't be accessed by another file
    let stackView = UIStackView(arrangedSubviews: [topStackView, blueView, bottomStackView])
    stackView.axis = .vertical
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(stackView)
        
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
}

