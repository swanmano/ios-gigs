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
            // TODO: fetch gigs here
        }
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GigCell", for: indexPath)

        // Configure the cell...

        return cell
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
