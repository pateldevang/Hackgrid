//
//  checkNetwork.swift
//  Hackgrid
//
//  Created by Devang Patel on 24/02/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController
{
    internal func checkNewtork(ifError: String) {
        checkConnection { (status, statusCode) in
            if statusCode == 404{
                print("No connection!!")
                // Vibrates on errors
                UIDevice.invalidVibrate()
                self.networkAlert(titlepass: ifError)
            }else{
                print("connection existing")
            }
        }
    }
}
