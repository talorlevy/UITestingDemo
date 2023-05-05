//
//  ViewController.swift
//  UITestingDemo
//
//  Created by Talor Levy on 5/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func validateLogin() -> Bool {
        if usernameTextField.text != "bob" || passwordTextField.text != "123" {
            return false
        }
        return true
    }
    
    func displayAlert() {
        var warning = UIAlertController(title: "Oops!",
                                      message: "Bad credentials",
                                        preferredStyle: .alert)
        var cancelAction = UIAlertAction(title: "Ok", style: .cancel)
        warning.addAction(cancelAction)
        present(warning, animated: true)
    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        if !validateLogin() {
            displayAlert()
            return
        }
        
        let user = User(name: "Bob")
        
        guard let vc2 = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else { return }
        vc2.user = user
        self.navigationController?.pushViewController(vc2, animated: true)
    }
}

