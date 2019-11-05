//
//  LoginViewController.swift
//  Gigs
//
//  Created by Craig Swanson on 11/4/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var segmentedControllerState: UISegmentedControl!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// MARK: Actions
    @IBAction func signInSignUpChanged(_ sender: UISegmentedControl) {
    }
    @IBAction func SignInUpButtonTapped(_ sender: UIButton) {
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
