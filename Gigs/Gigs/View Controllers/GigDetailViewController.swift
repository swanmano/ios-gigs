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
    var gigController: GigController?
    var gig: Gig?
    
    // MARK: Outlets
    @IBOutlet weak var jobTitleTextField: UITextField!
    @IBOutlet weak var jobDatePicker: UIDatePicker!
    @IBOutlet weak var jobDescription: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    @IBAction func saveJobEntry(_ sender: Any) {
        guard let title = jobTitleTextField.text,
            let description = jobDescription.text else { return }
        
        let newGig = Gig(title: title, description: description, dueDate: jobDatePicker.date)
        gigController?.addNewGig(with: newGig) { result in
                DispatchQueue.main.async {
                    self.navigationController?.popViewController(animated: true)
                }
        }
    }
    
    func updateViews() {
        if let gig = gig {
        jobTitleTextField.text = gig.title
        jobDescription.text = gig.description
        jobDatePicker.date = gig.dueDate
        } else {
            self.title = "New Gig"
        }
    }
}
