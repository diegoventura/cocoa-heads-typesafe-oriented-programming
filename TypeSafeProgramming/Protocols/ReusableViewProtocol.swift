//
//  ReusableViewProtocol.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableViewProtocol {
    
    static var reuseIdentifier: String { get }
    
}

extension ReusableViewProtocol where Self: UIView {
    static var reuseIdentifier: String {
        return NSStringFromClass(self)
    }
}
