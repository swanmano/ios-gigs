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
    
    // MARK: Properties
    var gigController: GigController!
    var loginType = LogInType.signUp
    
    
    // MARK: Outlets
    @IBOutlet weak var segmentedControllerState: UISegmentedControl!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
