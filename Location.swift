//
//  Location.swift
//  IMDraft
//
//  Created by Hannah Tipperman on 6/3/16.
//  Copyright © 2016 Hannah Tipperman. All rights reserved.
//

import UIKit

class Location: NSObject {
    //MARK: Properties
    var name: String
    var address: String
    var photo: UIImage?
    var text: String
    
  
    //MARK: Initialization
    init?(name: String, address: String, photo: UIImage?, text: String){
        self.name = name
        self.address = address
        self.photo = photo
        self.text = text
        super.init()
    }

}
