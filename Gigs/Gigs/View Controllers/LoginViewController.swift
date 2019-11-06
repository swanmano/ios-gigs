//
//  LoginViewController.swift
//  Gigs
//
//  Created by Craig Swanson on 11/4/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

enum LogInType {
    case signUp
    case logIn
}

class LoginViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var segmentedControllerState: UISegmentedControl!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    
    // MARK: Properties
    var gigController: GigController?
    var loginType = LogInType.signUp
    
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.backgroundColor = UIColor(hue: 190.360, saturation: 70/100, brightness: 80/100, alpha: 1.0)
        signInButton.tintColor = .white
        signInButton.layer.cornerRadius = 8.0
    }
    
// MARK: Actions
    @IBAction func signInTypeChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loginType = .signUp
            signInButton.setTitle("Sign Up", for: .normal)
        } else {
            loginType = .logIn
            signInButton.setTitle("Log In", for: .normal)
        }
    }
    
    @IBAction func signInUpButtonTapped(_ sender: UIButton) {
        guard let gigController = gigController else { return }
        if let username = usernameTextField.text,
            !username.isEmpty,
            let password = passwordTextField.text,
            !password.isEmpty {
            let user = User(username: username, password: password)
            
            if loginType == .signUp {
                gigController.signUp(with: user) { error in
                    if let error = error {
                        print("Error occurred during sign up: \(error)")
                    } else {
                        DispatchQueue.main.async {
                            let alertController = UIAlertController(title: "Sign Up Successful", message: "Please continue to log in", preferredStyle: .alert)
                            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                            alertController.addAction(alertAction)
                            self.present(alertController, animated: true) {
                                self.loginType = .logIn
                                self.segmentedControllerState.selectedSegmentIndex = 1
                                self.signInButton.setTitle("Log In", for: .normal)
                            }
                        }
                    }
                }
            } else {
                gigController.logIn(with: user) { error in
                    if let error = error {
                        print("Error occurred during logging in: \(error)")
                    } else {
                        DispatchQueue.main.async {
                            self.dismiss(animated: true, completion: nil)
                        }
                    }
                }
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
