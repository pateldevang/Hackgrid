//
//  QueriesViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class QueriesViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var queriesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        queriesTextView.delegate = self
        queriesTextView.text = "Type your query here."
        queriesTextView.textColor = UIColor.darkGray
        queriesTextView.returnKeyType = .done
        self.hideKeyboardWhenTappedAround()
    }
    
    
    //MARK :- UITextViewDelegates
    
    // remove placeholder
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Type your query here." {
            textView.text = ""
            textView.textColor = UIColor.black
            textView.textColor = UIColor.black
        }
    }
    
    // add placeholder
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == ""{
            textView.text = "Type your query here."
            textView.textColor = UIColor.darkGray
        }
    }
}
