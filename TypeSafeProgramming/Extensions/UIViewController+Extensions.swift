//
//  UIViewController+Extensions.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    private class var nibNameIdentifier: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
    class func instantiateFromXib() -> Self {
        return self.init(nibName: nibNameIdentifier, bundle: nil)
    }
}
