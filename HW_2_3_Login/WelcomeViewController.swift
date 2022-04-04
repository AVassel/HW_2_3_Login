//
//  WelcomeViewController.swift
//  HW_2_3_Login
//
//  Created by Anton Vassel on 04.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!

    var greetingString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Greeting, " + greetingString
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true) {
        }
    }
}
