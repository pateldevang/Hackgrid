//
//  QueriesViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class QueriesViewController: UIViewController, UITextViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Outlets
    @IBOutlet weak var queriesTextView: UITextView!
    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var FAQTableView: UITableView!
    
    let FAQ = [["question":"The FAQ question sample","answer":"No answer is really helping you to win the hack you can sleep :|"]]
    
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
    
    
    //MARK:- TableView delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FAQ.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var returnCell = UITableViewCell()
         if let cell = FAQTableView.dequeueReusableCell(withIdentifier: "faqcell") as? FAQTableViewCell
         {
            cell.questionLabel.text = FAQ[indexPath.row]["question"]
            cell.answerLabel.text = FAQ[indexPath.row]["answer"]
            
            //setting view border
            cell.faqView.layer.borderWidth = 1
            cell.faqView.layer.borderColor = #colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)
            cell.faqView.layer.masksToBounds = false

            returnCell = cell
        }
        return returnCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        /*
        let Screenwidth = UIScreen.main.bounds.width
        let width = (Screenwidth-35)
        let aspectRatio : CGFloat = 0.2031662269
        let height = width * aspectRatio
        return height */
        
        return 77
    }
}



