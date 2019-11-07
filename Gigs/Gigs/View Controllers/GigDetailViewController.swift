//
//  GigDetailViewController.swift
//  Gigs
//
//  Created by Craig Swanson on 11/7/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class GigDetailViewController: UIViewController {
    
    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var jobTitleTextField: UITextField!
    @IBOutlet weak var jobDatePicker: UIDatePicker!
    @IBOutlet weak var jobDescription: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    @IBAction func saveJobEntry(_ sender: Any) {
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
