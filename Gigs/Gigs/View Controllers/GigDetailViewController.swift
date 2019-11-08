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
    }
    
    // MARK: Actions
    // button to save after a new gig is entered. Creates a new Gig based on the user input, and calls the addNewGig method with the new Gig; upon returning it pops the view controller back to the table view
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
    
    // updates the screen to show the values of the cell tapped in the table view; if a cell wasn't tapped then it offers blank fields and the title is "New Gig"
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
