//
//  NewPasswordViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 27/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class NewPasswordViewController: UIViewController {

    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        addIndent(newPasswordTextField)
        addIndent(confirmPasswordTextField)
        // Do any additional setup after loading the view.
    }
    @IBAction func resetClicked(_ sender: UIButton) {
        successAlert()
    }
    
    func successAlert(){
        let alert = UIAlertController(title: "Congratulations!", message: "Password changed successfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome!", style: .cancel) { action in
            print("Continue")
            self.performSegue(withIdentifier: "mainvc2", sender: nil)
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func backClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
