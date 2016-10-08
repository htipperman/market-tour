//
//  LocationViewController.swift
//  IMDraft
//
//  Created by Hannah Tipperman on 6/3/16.
//  Copyright © 2016 Hannah Tipperman. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController{
    //MARK:Properites
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var actualNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var titleView: UINavigationItem!
    var loc: Location?
    var locs = [Location]()
    var cellNum = Int()
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            if let loc = loc{
            actualNameLabel.text = loc.name
            nameLabel.text = loc.address
            imageView.image = loc.photo
            textView.text = loc.text
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backLoc(sender: UIBarButtonItem) {
        if cellNum > 0{
            cellNum = cellNum-1
            self.loc = locs[cellNum]
            viewDidLoad()
        }
    }
    
    @IBAction func forwardLoc(sender: UIBarButtonItem) {
        if cellNum < locs.count-1{
            cellNum = cellNum+1
            self.loc = locs[cellNum]
            viewDidLoad()
        }
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}
