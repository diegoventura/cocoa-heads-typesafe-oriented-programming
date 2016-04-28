//
//  ReuseNibLoadableProtocol.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableNibLoadableProtocol: class {
    
    static var nibName: String { get }
    
}

extension ReusableNibLoadableProtocol where Self: UIView {
    
    static var nibName: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
}
