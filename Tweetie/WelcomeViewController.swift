//
//  WelcomeViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit
import Firebase

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
        
        // Login Anonymously
        FIRAuth.auth()?.signInAnonymously { (firUser, error) in
            if error == nil {
                // ok to go
                self.performSegue(withIdentifier: "Show Stories", sender: nil)
            } else {
                print(error)
            }
        }
        
    }
    
    @IBAction func loginTouchDown(_ sender: AnyObject)
    {
        (sender as! UIButton).alpha = 0.8
    }
}











