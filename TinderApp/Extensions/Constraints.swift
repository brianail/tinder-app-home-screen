//
//  Constraints.swift
//  TinderApp
//
//  Created by Giovanna Moeller on 09/01/22.
//

import Foundation
import UIKit

extension UIView {
  func fillSuperView() {
    self.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      self.topAnchor.constraint(equalTo: self.superview!.topAnchor),
      self.leadingAnchor.constraint(equalTo: self.superview!.leadingAnchor),
      self.bottomAnchor.constraint(equalTo: self.superview!.bottomAnchor),
      self.trailingAnchor.constraint(equalTo: self.superview!.trailingAnchor)
    ])
  }
  
  func fillSuperViewSafeArea() {
    self.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      self.topAnchor.constraint(equalTo: self.superview!.safeAreaLayoutGuide.topAnchor),
      self.leadingAnchor.constraint(equalTo: self.superview!.leadingAnchor),
      self.bottomAnchor.constraint(equalTo: self.superview!.safeAreaLayoutGuide.bottomAnchor),
      self.trailingAnchor.constraint(equalTo: self.superview!.trailingAnchor)
    ])
  }
}
