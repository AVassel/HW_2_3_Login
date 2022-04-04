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
    
    private let user = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        prepareToLoad()
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return}
        welcomeVC.greetingString = loginTF.text
    }
    
    private func prepareToLoad() {
        if loginTF.text != user || passwordTF.text != password {
            showAlert(with: "Ahtung!!!", and: "Неверно указано имя пользователя или пароль!")
        }
    }
    
    @IBAction func forgotPassButtonPressed() {
        showAlert(with: "Забыли пароль?", and: "А он - \(password)")
    }
    
    @IBAction func forgotUserButtonPressed() {
        showAlert(with: "Забыли имя пользователя?", and: "А оно - \(user)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF { passwordTF.becomeFirstResponder()
        } else {
            prepareToLoad()
            performSegue(withIdentifier: "WelcomeViewController", sender: nil)
        }
        return true
    }
}

extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
