//
//  custom+Navigation.swift
//  Hackgrid
//
//  Created by Devang Patel on 24/02/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController?.childForStatusBarStyle ?? topViewController
    }
}
