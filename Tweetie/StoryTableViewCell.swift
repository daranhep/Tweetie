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
    
    var story: Story! {
        didSet {
            storyLabel.text = story.text
            likeButton.setTitle("😀 \(story.numberOfLikes)", for: UIControlState())
            angryButton.setTitle("👿 \(story.numberOfAngry)", for: UIControlState())
        }
    }
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var angryButton: UIButton!
    
    @IBAction func angreeDidTouch(_ sender: AnyObject)
    {
        // CHALLENGE: get angry on this story
        story.dislike()
        likeButton.setTitleColor(angryColor, for: UIControlState())
        likeButton.setTitle("😀 \(story.numberOfAngry)", for: UIControlState())

    }

    @IBAction func likeDidTouch(_ sender: AnyObject)
    {
        // TODO: Like this story
        story.like()
        likeButton.setTitleColor(likeColor, for: UIControlState())
        likeButton.setTitle("😀 \(story.numberOfLikes)", for: UIControlState())
    }
}














