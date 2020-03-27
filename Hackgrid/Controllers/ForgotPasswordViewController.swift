//
//  ForgotPasswordViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 27/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        addIndent(emailTextField)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendLinkClicked(_ sender: Any) {
    }
    @IBAction func backClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
