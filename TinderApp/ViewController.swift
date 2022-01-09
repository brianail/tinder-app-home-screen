//
//  ViewController.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import UIKit

class ViewController: UIViewController {
  
  let topStackView = HomeTopStackView()
  let cardsDeskView = UIView()
  let bottomStackView = HomeBottomStackView()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupLayout()
    setupCard()
  }
  
  // MARK: Fileprivate
  
  fileprivate func setupCard() {
    let cardView = HomeCardView() // frame: .zero
    
    cardsDeskView.addSubview(cardView)
    
    //cardView.fillSuperView()
    
    cardView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      cardView.topAnchor.constraint(equalTo: cardsDeskView.topAnchor),
      cardView.leadingAnchor.constraint(equalTo: cardsDeskView.leadingAnchor, constant: 8),
      cardView.bottomAnchor.constraint(equalTo: cardsDeskView.bottomAnchor),
      cardView.trailingAnchor.constraint(equalTo: cardsDeskView.trailingAnchor, constant: -8)
    ])
    
    
  }
  
  fileprivate func setupLayout() { // can't be accessed by another file
    let stackView = UIStackView(arrangedSubviews: [topStackView, cardsDeskView, bottomStackView])
    stackView.axis = .vertical
        
    view.addSubview(stackView)
        
    stackView.fillSuperViewSafeArea()
  }
}

