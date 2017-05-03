//
//  WelcomeViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController
{
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func loginDidTouch(_ sender: AnyObject)
    {
        (sender as! UIButton).alpha = 1.0
        
        // TODO: Login Anonymously here
        
    }
    
    @IBAction func loginTouchDown(_ sender: AnyObject)
    {
        (sender as! UIButton).alpha = 0.8
    }
}











