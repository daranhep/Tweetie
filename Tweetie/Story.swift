//
//  Story.swift
//  Tweetie
//
//  Created by Duc Tran on 4/18/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import Foundation
import Firebase

class Story
{
    var text = ""
    var numberOfLikes = 0
    var numberOfAngry = 0
    
    let ref: FIRDatabaseReference!
    
    private let storiesRef = FIRDatabase.database().reference().child("stories")
    
    init(text: String) {
        self.text = text
        ref = storiesRef.childByAutoId()
    }
    
    init(snapshot: FIRDataSnapshot) {
        ref = snapshot.ref
        if let value = snapshot.value as? [String: Any] {
            text = value["text"] as! String
            numberOfLikes = value["numberOfLikes"] as! Int
            numberOfAngry = value["numberOfAngry"] as! Int
        }
    }
    
    func save() {
        ref.setValue(self.toAny())
    }
    
    func toAny() -> Any {
        return [
            "text": text,
            "numberOfLikes" : numberOfLikes,
            "numberOfAngry" : numberOfAngry
        ]
    }
    
}

extension Story {
    func like() {
        numberOfLikes += 1
        ref.child("numberOfLikes").setValue(numberOfLikes)
    }
    
    func dislike() {
        numberOfAngry += 1
        ref.child("numberOfAngry").setValue(numberOfAngry)
    }
}













