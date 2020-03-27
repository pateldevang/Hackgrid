//
//  textField+indent.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 27/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func addIndent(_ textField : UITextField){
        let spacerView = UIView(frame:CGRect(x:0, y:0, width:15, height:textField.frame.height))
        textField.leftViewMode = UITextField.ViewMode.always
        textField.leftView = spacerView
    }
}
