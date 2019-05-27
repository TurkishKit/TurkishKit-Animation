//
//  ViewController.swift
//  TurkishKit-Animation
//
//  Created by Nadin Tamer on 25.05.2019.
//  Copyright © 2019 Nadin Tamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    let screenHeight = UIScreen.main.bounds.size.height
    let screenWidth = UIScreen.main.bounds.size.width
    
    lazy var animator = UIViewPropertyAnimator(duration: 1.0, dampingRatio: 0.7) {
        self.cardView.frame = CGRect(x: 0, y: 0, width: self.screenWidth, height: self.screenHeight)
        self.cardView.layer.cornerRadius = 0
        
        self.coverImageView.frame = CGRect(x: 0, y: 0, width: self.screenWidth, height: 420)
        self.coverImageView.layer.cornerRadius = 0
        
        self.titleLabel.frame = CGRect(x: 20, y: 347, width: self.screenWidth, height: 36)
        
        self.captionLabel.frame = CGRect(x: 20, y: 381, width: self.screenWidth, height: 24)
        
        self.descriptionLabel.alpha = 1
        self.descriptionLabel.frame = CGRect(x: 20, y: 426, width: 358, height: 244)
        
        self.backButton.alpha = 0.8
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardView.layer.cornerRadius = 14
        coverImageView.layer.cornerRadius = 14
        
        descriptionLabel.alpha = 0
        
        backButton.layer.cornerRadius = 15
        backButton.alpha = 0
        
        self.animator.pausesOnCompletion = true
    }

    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        self.animator.isReversed = false
        self.animator.startAnimation()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.animator.isReversed = true
        self.animator.startAnimation()
    }
}

