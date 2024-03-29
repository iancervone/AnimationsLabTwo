//
//  ViewController.swift
//  AnimationsLabTwo
//
//  Created by Ian Cervone on 10/14/19.
//  Copyright © 2019 Ian Cervone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  //BALLS
  var ballOne: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    view.layer.cornerRadius = 35
    return view
  }()
  
  var ballTwo: UIView = {
    let view = UIView()
      view.backgroundColor = .yellow
      view.layer.cornerRadius = 35
      return view
    }()
  
  var ballThree: UIView = {
  let view = UIView()
    view.backgroundColor = .blue
    view.layer.cornerRadius = 35
    return view
  }()
  
  var ballFour: UIView = {
  let view = UIView()
    view.backgroundColor = .green
    view.layer.cornerRadius = 35
    return view
  }()
  
  //BUTTONS
  //easeIn easeOut easeInAndOut

  var linearButton: UIButton = {
    let button = UIButton()
    button.setTitle("linear", for: .normal)
    button.addTarget(self, action: #selector(linearButtonPressed), for: .touchUpInside)
    button.backgroundColor = .black
    return button
  }()
  
  var easeInButton: UIButton = {
    let button = UIButton()
    button.setTitle("easeIn", for: .normal)
    button.addTarget(self, action: #selector(easeInButtonPressed), for: .touchUpInside)
    button.backgroundColor = .black
    return button
  }()
  
  var easeOutButton: UIButton = {
    let button = UIButton()
    button.setTitle("easeOut", for: .normal)
    button.addTarget(self, action: #selector(easeOutButtonPressed), for: .touchUpInside)
    button.backgroundColor = .black
    return button
  }()
  
  var easeInAndOutButton: UIButton = {
    let button = UIButton()
    button.setTitle("inAndOut", for: .normal)
    button.addTarget(self, action: #selector(easeInAndOutButtonPressed), for: .touchUpInside)
    button.backgroundColor = .black
    return button
  }()
  
  var animateButton: UIButton = {
    let button = UIButton()
    button.setTitle("Animate", for: .normal)
    button.addTarget(self, action: #selector(animateButtonPressed), for: .touchUpInside)
    button.backgroundColor = .black
    return button
  }()
  
  var resetButton: UIButton = {
  let button = UIButton()
    button.setTitle("Reset", for: .normal)
    button.addTarget(self, action: #selector(resetButtonPressed), for: .touchUpInside)
    button.backgroundColor = .black
    return button
  }()
  
  private func setUpSubViews() {
    self.view.addSubview(ballOne)
    self.view.addSubview(ballTwo)
    self.view.addSubview(ballThree)
    self.view.addSubview(ballFour)
    self.view.addSubview(linearButton)
    self.view.addSubview(easeInButton)
    self.view.addSubview(easeOutButton)
    self.view.addSubview(easeInAndOutButton)
    self.view.addSubview(animateButton)
    self.view.addSubview(resetButton)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    setUpSubViews()
    setUpConstraints()
  }

  
  
  //BUTTON FUNCTIONS
  
  @objc func animateButtonPressed() {
    UIView.animateKeyframes(withDuration: 3.0, delay: 0.0, options: [], animations: {
      UIView.addKeyframe(withRelativeStartTime: 0.05, relativeDuration: 3.0) {
        self.ballOne.transform = CGAffineTransform(translationX: 0, y: 620)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.15, relativeDuration: 3.0) {
        self.ballTwo.transform = CGAffineTransform(translationX: 0, y: 620)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 2.0) {
        self.ballThree.transform = CGAffineTransform(translationX: 0, y: 620)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 2.5) {
        self.ballFour.transform = CGAffineTransform(translationX: 0, y: 620)
      }
    }, completion: nil)
  }
  
  @objc func resetButtonPressed() {
    UIView.animateKeyframes(withDuration: 0.0, delay: 0.0, options: [], animations: {
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.0) {
        self.ballOne.transform = CGAffineTransform(translationX: 0, y: 0)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.0) {
        self.ballTwo.transform = CGAffineTransform(translationX: 0, y: 0)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.0) {
        self.ballThree.transform = CGAffineTransform(translationX: 0, y: 0)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.0) {
        self.ballFour.transform = CGAffineTransform(translationX: 0, y: 0)
      }
    }, completion: nil)
  }
  
  
  @objc func linearButtonPressed() {
    if self.ballOne.alpha == 1.0 {
         self.ballOne.alpha = 0.0
       } else {
         self.ballOne.alpha = 1.0
       }
  }
  
  @objc func easeInButtonPressed() {
    if self.ballTwo.alpha == 1.0 {
      self.ballTwo.alpha = 0.0
    } else {
      self.ballTwo.alpha = 1.0
    }
  }
  
  @objc func easeOutButtonPressed() {
    if self.ballThree.alpha == 1.0 {
      self.ballThree.alpha = 0.0
    } else {
      self.ballThree.alpha = 1.0
    }
  }
  
  @objc func easeInAndOutButtonPressed() {
    if self.ballFour.alpha == 1.0 {
      self.ballFour.alpha = 0.0
    } else {
      self.ballFour.alpha = 1.0
    }
  }
  
  
  //CONSTRAINTS
  
  private func setUpConstraints() {
    ballOneConstraints()
    ballTwoConstraints()
    ballThreeConstraints()
    ballFourConstraints()
    linearButtonConstraints()
    easeInButtonConstraints()
    easeOutButtonConstraints()
    easeInAndOutButtonConstraints()
    animateButtonConstraints()
    resetButtonConstraints()
  }
  
  private func ballOneConstraints() {
    ballOne.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      ballOne.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
      ballOne.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
      ballOne.widthAnchor.constraint(equalToConstant: 70),
      ballOne.heightAnchor.constraint(equalToConstant: 70)
    ])
  }
 
  private func ballTwoConstraints() {
    ballTwo.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      ballTwo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
      ballTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 125),
      ballTwo.widthAnchor.constraint(equalToConstant: 70),
      ballTwo.heightAnchor.constraint(equalToConstant: 70)
    ])
  }
  
  private func ballThreeConstraints() {
    ballThree.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      ballThree.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
      ballThree.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -125),
      ballThree.widthAnchor.constraint(equalToConstant: 70),
      ballThree.heightAnchor.constraint(equalToConstant: 70)
    ])
  }
  
  private func ballFourConstraints() {
    ballFour.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      ballFour.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
      ballFour.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
      ballFour.widthAnchor.constraint(equalToConstant: 70),
      ballFour.heightAnchor.constraint(equalToConstant: 70)
    ])
  }
  
    private func linearButtonConstraints() {
     linearButton.translatesAutoresizingMaskIntoConstraints = false
     NSLayoutConstraint.activate([
          linearButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
          linearButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
          linearButton.widthAnchor.constraint(equalToConstant: 70),
          linearButton.heightAnchor.constraint(equalToConstant: 30)
        ])
   }
  
  private func easeInButtonConstraints() {
    easeInButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      easeInButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
      easeInButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 125),
      easeInButton.widthAnchor.constraint(equalToConstant: 70),
      easeInButton.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
  
  private func easeOutButtonConstraints() {
    easeOutButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      easeOutButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
      easeOutButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -125),
      easeOutButton.widthAnchor.constraint(equalToConstant: 70),
      easeOutButton.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
  
  private func easeInAndOutButtonConstraints() {
     easeInAndOutButton.translatesAutoresizingMaskIntoConstraints = false
     NSLayoutConstraint.activate([
       easeInAndOutButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
       easeInAndOutButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -28),
       easeInAndOutButton.widthAnchor.constraint(equalToConstant: 77),
       easeInAndOutButton.heightAnchor.constraint(equalToConstant: 30)
     ])
   }
  
  private func animateButtonConstraints() {
    animateButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      animateButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50),
      animateButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
      animateButton.widthAnchor.constraint(equalToConstant: 70),
      animateButton.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
  
  private func resetButtonConstraints() {
    resetButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      resetButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50),
      resetButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -28),
      resetButton.widthAnchor.constraint(equalToConstant: 77),
      resetButton.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
  
}

