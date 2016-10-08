//
//  TabViewController.swift
//  IMDraft
//
//  Created by Hannah Tipperman on 7/13/16.
//  Copyright © 2016 Hannah Tipperman. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for item in self.tabBar.items!{
            item.titlePositionAdjustment.vertical = -15
            
        }
        

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        let userDefault             = NSUserDefaults.standardUserDefaults()
        let userDefaultOpenString   = "AppOpenCounter"
        let appStoreURLString       = "https://itunes.apple.com/us/app/market-tour/id1134203706?ls=1&mt=8"
        let countDetectorInt        = 2
        
        
        var openCounterInt = userDefault.integerForKey(userDefaultOpenString)
        openCounterInt += 1
        userDefault.setInteger(openCounterInt, forKey: userDefaultOpenString)
        userDefault.synchronize()
        if openCounterInt >= countDetectorInt && openCounterInt%5 == 0 {
            self.displayAlert()
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayAlert(){
        print("IN DISPLAY ALERT")
        let userDefault             = NSUserDefaults.standardUserDefaults()
        let userDefaultOpenString   = "AppOpenCounter"
        let appStoreURLString       = "https://itunes.apple.com/us/app/market-tour/id1134203706?ls=1&mt=8"
        var openCounterInt = userDefault.integerForKey(userDefaultOpenString)
        let alertController = UIAlertController(title: "Rate The Tour", message: "Would you like to rate this tour?", preferredStyle: UIAlertControllerStyle.Alert)
        
        // Add Yes Action
        alertController.addAction(UIAlertAction(title: "Yes", style: .Default, handler: { action in
            
            if let url = NSURL(string: appStoreURLString) {
                UIApplication.sharedApplication().openURL(url)
            }
        }))
        
        //Add Not Now Action, so don't reset the userDefault Counter
        alertController.addAction(UIAlertAction(title: "Not now", style: .Default, handler: nil))
        
        //Add No Action
        /*alertController.addAction(UIAlertAction(title: "No", style: .Default, handler: { action in
            userDefault.setInteger(0, forKey: userDefaultOpenString)
            userDefault.synchronize()
        }))*/
        

    self.presentViewController(alertController, animated: true, completion: nil)
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
