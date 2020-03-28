//
//  LoginViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 27/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         addIndent(emailTextField)
         addIndent(passwordTextField)
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        successAlert()
    }
    
    func successAlert(){
        let alert = UIAlertController(title: "You’re all set!", message: "Welcome to HackGrid 2020 💙", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome!", style: .cancel) { action in
            print("success")
            self.performSegue(withIdentifier: "mainvc", sender: nil)
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}
