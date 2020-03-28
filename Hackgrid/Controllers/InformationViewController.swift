//
//  InformationViewController.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 26/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    
     @IBOutlet weak var sponsorView: UIView!
     @IBOutlet weak var adgView: UIView!
     //@IBOutlet weak var adgView2: UIView!
     override func viewDidLoad() {
         super.viewDidLoad()
         sponsorView.isHidden = false
         adgView.isHidden = true
     }

     @IBAction func segmentPushed(_ sender: UISegmentedControl) {
         if sender.selectedSegmentIndex == 0{
             sponsorView.isHidden = false
             adgView.isHidden = true
         }
         else{
             sponsorView.isHidden = true
             adgView.isHidden = false
         }
     }

}
