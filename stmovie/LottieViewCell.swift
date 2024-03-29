//
//  LottieViewCell.swift
//  stmovie
//
//  Created by Akyl Zholonov on 8/30/19.
//  Copyright © 2019 azholonov. All rights reserved.
//

import UIKit
import Lottie

class LottieViewCell: UICollectionViewCell {
    
    let animationView = AnimationView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAnimation(_ animName: String) {
        
        let animation = Animation.named(animName, subdirectory: "LottieAnimations")
        
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFill
       
        addSubview(animationView)
        
        animationView.backgroundBehavior = .pauseAndRestore
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        animationView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        animationView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        animationView.loopMode = .loop
        animationView.play()
    }
}
