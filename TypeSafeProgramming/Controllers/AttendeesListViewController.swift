//
//  AttendeesListViewController.swift
//  TypeSafeProgramming
//
//  Created by Diego Ventura on 4/27/16.
//  Copyright © 2016 Diego Ventura. All rights reserved.
//

import Foundation
import UIKit

class AttendeesListViewController: UIViewController {
    
    private let tableView = UITableView()
    private var tableData: [Attendee] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Attendee List"
        
        self.tableView.frame = self.view.bounds
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.registerNib(AttendeeTableViewCell.self)
        
        self.view.addSubview(self.tableView)
        
        self.tableData = fetchAttendees()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
    }
    
    private func fetchAttendees() -> [Attendee] {
        return [Attendee(name: "Thiago Holanda", companyName: "Concrete Solutions"),
                Attendee(name: "Bruno Valente", companyName: "Punch! Comunicação"),
                Attendee(name: "Douglas Fischer", companyName: "Abacomm"),
                Attendee(name: "Eduardo Ferreira", companyName: "OLX Brasil"),
                Attendee(name: "Diego Ventura", companyName: "OLX Brasil")]
    }
    
}

extension AttendeesListViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(AttendeeTableViewCell.self, forIndexPath: indexPath)
        
        let attendee = self.tableData[indexPath.row]
        
        cell.configure(attendee)
        
        return cell
    }
    
}

extension AttendeesListViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80.0
    }
    
}
