//
//  FirstViewController.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "CocoaHeads RJ - 17ª Edição"
    }
    
    @IBAction func showAttendeesList(sender: AnyObject) {
        
        let attendeeListViewController = AttendeesListViewController()
        
        self.navigationController?.pushViewController(attendeeListViewController, animated: true)
        
    }
    
}
