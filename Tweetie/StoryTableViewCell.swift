//
//  StoryTableViewCell.swift
//  UITableViewDemo
//
//  Created by Duc Tran on 2/24/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class StoryTableViewCell: UITableViewCell
{
    fileprivate let likeColor = UIColor(red: 243.0/255.0, green: 62.0/255.0, blue: 30.0/255.0, alpha: 1.0)
    fileprivate let angryColor = UIColor(red: 155/255.0, green: 53/255.0, blue: 181/255.0, alpha: 1.0)
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var angryButton: UIButton!
    
    @IBAction func angreeDidTouch(_ sender: AnyObject)
    {
        // CHALLENGE: get angry on this story
    }

    @IBAction func likeDidTouch(_ sender: AnyObject)
    {
        // TODO: Like this story
    }
}














