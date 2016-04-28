//
//  AttendeeTableViewCell.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

class AttendeeTableViewCell: UITableViewCell, ReusableViewProtocol, ReusableNibLoadableProtocol {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var companyNameLabel: UILabel!
    
    func configure(ateendee: Attendee) {
        
        self.nameLabel.text = ateendee.name
        self.companyNameLabel.text = ateendee.companyName
        
    }
    
}
