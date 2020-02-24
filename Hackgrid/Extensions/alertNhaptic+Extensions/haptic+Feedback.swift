//
//  haptic+Feedback.swift
//  Hackgrid
//
//  Created by Devang Patel on 24/02/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox

extension UIDevice {
    
    // Vibrates when any error occur like invalid password etc.
    static func invalidVibrate() {
        AudioServicesPlaySystemSound(SystemSoundID(1102))
    }
    
    // For sucess haptic
    static func validVibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}

