//
//  QueriesViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class QueriesViewController: UIViewController, UITextViewDelegate {

    
    //MARK: - Outlets
    @IBOutlet weak var queriesTextView: UITextView!
    @IBOutlet weak var postButton: UIButton!
    
    //MARK:- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        queriesTextViewSetup()
    }
    
    
    //MARK:- UITextViewDelegate Methods
    
    func queriesTextViewSetup(){
        queriesTextView.delegate = self
        queriesTextView.text = "Type your query here."
        queriesTextView.textColor = UIColor.darkGray
        queriesTextView.layer.cornerRadius = 9
    }
    
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
    
    //MARK:- post button clicked
    @IBAction func postButtonClicked(_ sender: UIButton) {
        //add code here
    }
}
