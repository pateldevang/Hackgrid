//
//  SignUpViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 27/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addIndent(emailTextField)
        addIndent(passwordTextField)
    }
    
    @IBAction func signUpClicked(_ sender: UIButton) {
        
    }
    
}
