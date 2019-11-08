//
//  GigsTableViewController.swift
//  Gigs
//
//  Created by Craig Swanson on 11/4/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class GigsTableViewController: UITableViewController {
    
    // MARK: Properties
    // the initialization of the gigcontroller is set here
    var gigController = GigController()
    var allGigs: [Gig]? {
        didSet {
            tableView.reloadData()
        }
    }

    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // if bearer token is not present, segue to the login view
        if gigController.bearer == nil {
            performSegue(withIdentifier: "LoginSegue", sender: self)
        } else {
            gigController.getAllGigs { result in
                if let gigs = try? result.get() {
                    DispatchQueue.main.async {
                        self.allGigs = gigs
                    }
                }
            }
        }
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return gigController.gigs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GigCell", for: indexPath)

        cell.textLabel?.text = gigController.gigs[indexPath.row].title
        cell.detailTextLabel?.text = gigController.gigs[indexPath.row].description

        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginSegue" {
            guard let loginVC = segue.destination as? LoginViewController else { return }
            loginVC.gigController = gigController
        } else if segue.identifier == "AddNewGig" {
            guard let gigDetailVC = segue.destination as? GigDetailViewController else { return }
            gigDetailVC.gigController = gigController
        }
    }


}
