//
//  NextViewController.swift
//  UITestingDemo
//
//  Created by Talor Levy on 5/5/23.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var welcomeUserLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    
    func setLabel() {
        welcomeUserLabel.text = "Welcome, \(user?.name ?? "Unknown")"
    }
}
