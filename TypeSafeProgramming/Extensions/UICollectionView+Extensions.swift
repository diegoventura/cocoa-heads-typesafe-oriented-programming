//
//  UICollectionView+Extensions.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func registerClass<T: UICollectionViewCell where T: ReusableViewProtocol>(_: T.Type) {
        registerClass(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func registerNib<T: UICollectionViewCell where T: ReusableViewProtocol, T: ReusableNibLoadableProtocol>(_: T.Type) {
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        registerNib(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell where T: ReusableViewProtocol>(forIndexPath indexPath: NSIndexPath) -> T {
        guard let cell = dequeueReusableCellWithReuseIdentifier(T.reuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }    
}
