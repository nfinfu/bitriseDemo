//
//  ViewController.swift
//  bitriseDemo
//
//  Created by Mehmet KILINÇKAYA on 31.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var labelWarning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped() {
        guard let email = self.textEmail.text, !email.isEmpty else {
            self.labelWarning.text = "Empty mail address"
            return
        }
        guard let password = self.textPassword.text, !password.isEmpty else {
            self.labelWarning.text = "Empty password"
            return
        }
        self.labelWarning.text = "You can login"
    }
}

