//
//  ViewController.swift
//  HW_2_3_Login
//
//  Created by Anton Vassel on 01.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        loginTF.delegate = self
//        passwordTF.delegate = self
        
    }

    @IBAction func passwordTFPressed() {
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTF.becomeFirstResponder()
    }
}
