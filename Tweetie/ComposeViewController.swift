//
//  ComposeViewController.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController
{
    @IBOutlet weak var postBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var storyTextView: UITextView!

    @IBAction func postDidTouch(_ sender: UIBarButtonItem)
    {
        if storyTextView.text != "" {
            
            // TODO: (1) Create new story
            let newStory = Story(text: storyTextView.text)
            
            //       (2) Upload the story to Firebase
            newStory.save()
            
            self.navigationController!.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = postBarButtonItem
        title = "Tell A Story..."

        storyTextView.text = ""
        storyTextView.becomeFirstResponder()
    }
}
