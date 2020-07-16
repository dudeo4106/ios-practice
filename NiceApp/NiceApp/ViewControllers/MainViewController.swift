//
//  ViewController.swift
//  NiceApp
//
//  Created by DAEYOUNG JUNG on 2020/07/13.
//  Copyright © 2020 DAEYOUNG JUNG. All rights reserved.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Main"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "12358-christmas-loading")
        animView.frame = CGRect(x:0,y:0,width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
        return animView
        
    }()
    
    // when a view is created
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        // animation start
        animationView.play{ (finish) in
            print("animation ended")
            
            self.view.backgroundColor = .white
            
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

