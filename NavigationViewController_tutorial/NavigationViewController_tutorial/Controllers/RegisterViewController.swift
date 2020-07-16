//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by DAEYOUNG JUNG on 2020/07/15.
//  Copyright © 2020 DAEYOUNG JUNG. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
