//
//  StoriesTableViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class StoriesTableViewController: UITableViewController
{
    // MARK: - Properties
    
    @IBOutlet weak var composeBarButtonItem: UIBarButtonItem!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: download our new stories here
        // (1) download data from the reference every time it gets called
        // (2) automatically download data from the reference every time
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.hidesBackButton = true
        title = "Stories"
        self.navigationItem.rightBarButtonItem = composeBarButtonItem
        
        self.tableView.estimatedRowHeight = 92.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // TODO: return the stories count
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Story Cell", for: indexPath) as! StoryTableViewCell

        // TODO: assign a story for the cell

        return cell
    }
}
