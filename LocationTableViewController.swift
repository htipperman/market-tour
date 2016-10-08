//
//  LocationTableViewController.swift
//  IMDraft
//
//  Created by Hannah Tipperman on 6/3/16.
//  Copyright © 2016 Hannah Tipperman. All rights reserved.
//

import UIKit

class LocationTableViewController: UITableViewController {
    //MARK: Properites
    
    internal var locs = [Location]()
    internal var currentCell = 0
    func getCC() -> Int{
        return currentCell
    }
    internal func  getLocs(place: Int) -> Location{
        return locs[place]
    }
    func loadSampleLocs(){

        let dbbpic = UIImage(named: "DBB")!
        let anthonypic = UIImage(named: "Anthony")!
        let giordanopic = UIImage(named :"Giordano")!
        let darigopic = UIImage(named: "Darigo")!
        let gardenpic = UIImage(named: "Garden")!
        let genopic = UIImage(named: "Geno")!
        let patpic = UIImage(named: "Pat")!
        let rimpic = UIImage(named: "RIM")!
        let paesanopic = UIImage(named: "Paesano")!
        let grassiapic = UIImage(named: "Grassia")!
        let sabpic = UIImage(named: "SAB")!
        let dbpic = UIImage(named: "DiAngelo")!
        let tallpic = UIImage(named:"Talluto")!
        let fantepic = UIImage(named: "Fante")
        
        let loc2 = Location(name: "Anthony's Coffee House", address: "903 S 9th St", photo: anthonypic, text: "Come to Anthony's for a coffee, pastry, or panini! They have excellent outdoor seating, and tasty coffee to match. The almond biscotti and cannoli are popular desserts, while the Venetian Roast is a terrific coffee choice. \n\n Originally, Anthony's was actually a grocery store and market, but after a trip to Italy, the young Anthony turned the old family store into a recreation of the small Italian coffee shops he fell in love with. From the Italian Market Visitor Center, head up the street until just past Salter Street, and you'll see Anthony's on your left.")!
       
        let db = Location(name: "D'Angelo Bros.", address: "909 S 9th St", photo: dbpic, text: "D'Angelo's specializes in everything meat - they have rabbit, venison, kangaroo, and more every day! Whether you'd just like a high-quality version of a classic meat, or you're ready to try something new, this is the place to go!  They even have kangaroo jerky! \n\n Additionally, the decor of the shop (busts and skulls of different animals) is cool to see, so you may want to stop in just for that as well! ")!

        
        let loc3 = Location(name: "Di Bruno Bros.", address: "930 S. 9th St", photo: dbbpic, text: "Di Bruno Bros. offers amazing artisans antipasto, cheese, and meat, as well as spectacular service from their cheesemongers!. \n\n Started in 1939 by three Italian immigrants, Di Bruno Bros. has become a treasured symbol of the Italian Market. Despite the fact that the founders stopped their education at middle school, they created a piece of Italy in Philadelphia. The grilled cheeses are highly recommended. \n\n Simply walk down from the Visitor Center until you've past Hall Street. It will be just on your left. ")!
        
        let tallu = Location(name: "Talluto's", address: "944 S 9th St", photo: tallpic, text: "Talluto's is where to go if you love pasta - they have so many types, and all of them are good! The squid ink and rose pastas are crowd favorites as are the lobster ravioli. If you've never seen pasta being made before, you should stop in and check out the counter, where someone is usually making a new batch! \n\n You may also hear new pronunciations of various pastas - this is from the changes in language that occured when Italians came to Philadelphia. Some common ones are tubilini (tubetti), manigawt(manicotti), and gabigilisy(cavatelli).")!
        
        
        let loc4 = Location(name: "Grassia’s Spice Company", address: "949 S 9th St", photo: grassiapic, text: "If you want to \"spice things up a little \", Grassia's is the place to go! This remarkable purveyor of spices has been open for over 80 years! They offer many hard to find spices, and even a solid collection of hot sauces, so there is truly something for everyone. Walk down from Di Bruno Bros. until just before Carpenter Street, and it will be on your right.")!
        
        
        let fante = Location(name: "Fante's", address: "1006 S 9th St", photo: fantepic, text: "Fante's has an incredible selection of kitchen supplies, gadgets, and appliances guaranteed to satisfy even the most demanding kitchen aficionado in your life.  Every possible item imaginable is there from decorative cupcake holders, to multi-purpose slow cookers, pasta makers to ice pop molds. If you want it, and it’s made for the kitchen, they probably have it! \n\n A fun piece of Italian Market history is the enormous cast iron victorian safe in the back section of the store- make sure to open it up as well and look inside.")!
        
        let loc5 = Location(name: "Darigo's Fish Market",address: "1015 S 9th St", photo: darigopic, text: "Darigo's is known for having some of the best quality fish in the Italian market. Additonally, they will clean your fish and put it in ice so that you can bring it home even in the heat! Darigo's also offers sea creatures like squid, octupus, clams, mussels, and scallops, as well as fish. \n\n Walk all the way down until a little before Kimball Street, and you'll see their sign.")!
        
        
        let loc6 = Location(name: "Paesano's", address: "1017 S 9th St", photo: paesanopic, text: "If you want a sandwich, go here. Two Tips: 1) It can get busy on weekends, so you may want to call your order in ahead of time. (215) 440-0371, and 2) The sandwiches are big, and cut in half. Many people save one half for later! It is neighbors with Darigo's Fish Market.")!
        
        let giordano = Location(name: "Giordano's", address: "1043 S 9th St", photo: giordanopic, text: "Giordano's is a vibrant and heavily stocked grocery store that's always bustling. While many vendors carry more rarely seen produce, Giordano's sometimes has sugar cane, which is quite a treat. Make sure to check and see if its available when you pass by. Continue walking down the street, and Giordano's will be on the corner just before Washington Ave.")!
        
        
        let loc7 = Location(name: "RIM Cafe", address: "1172 S 9th St", photo: rimpic, text: "With its decadent desserts, this place is a chocolate lover's heaven! It's a few blocks south of the main market, so if you are short on time, you may want to head back to Anthony's and sample some of their pastries instead. If you're willing to wander over to RIM, their drinks and desserts are certainly worth the walk. It has an ecceletic feel, and to get there, you simply need to walk down 9th street until just before Federal Street.")!
        
        let loc8 = Location(name: "Geno's", address: "1219 S 9th St", photo: genopic, text: "Part of the famed rivalry of Philly cheesesteak places, Geno's has certainly earned its reputation as absolutely delicious. If you're with a group, you may want to split up and order at both Pat's and Geno's in order to try to spot the differences. If you're alone you'll have to choose - and it's a hard choice! Once again, just walk down the street and you'll see it (but you'll probably smell it first!)")!
        
        let loc9 = Location(name: "Pat's", address: "1237 E Passyunk Ave", photo: patpic, text: "Pat and Harry Olivieri are known for being the original creators of the Philly cheesesteack. Pat's King of Steaks is a classic Philly tradition, and as its right across the street from Geno's, you have no reason not to try it!")!
        
        let sab  = Location(name: "Satellite Auto Body", address: "1231 E Passyunk Ave", photo: sabpic, text: "Satellite Auto Body is a car shop turned bar, and certainly looks like it with a garage inspired vibe. They have a long beer list, skiball machines, and an open front, so you can people watch away! It is right inbetween Pat's and Geno's, and is a great post-cheesesteak stop.")!
        
         let garden = Location(name: "Community Garden", address: "1300 E Passyunk Ave", photo: gardenpic, text: "The community garden is simple, with beautiful plants, and stunning artworks. Its a great photo-op, and a good way to end our tour. Hopefully, you've enjoyed tasting your way through the Italian Market, and perhaps will be able to come back again for more! ")!
        
        
        
        locs += [loc2, db, loc3, tallu, loc4, fante, loc5, loc6, giordano, loc7, loc8, loc9, sab, garden]
        //locs.sortInPlace({$0.name < $1.name})
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleLocs()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return locs.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "LocationTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! LocationTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let loc = locs[indexPath.row]
        
        cell.nameLabel.text = loc.name
        cell.photoImageView.image = loc.photo
        cell.addressLabel.text = loc.address
        
        
        return cell
    }
    //MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
            let locDetailViewController = segue.destinationViewController as! LocationViewController
            locDetailViewController.locs = locs
        
            if let selectedLocationCell = sender as? LocationTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedLocationCell)!
                locDetailViewController.cellNum = indexPath.row
                let selectedLoc = locs[indexPath.row]
                locDetailViewController.loc = selectedLoc
                
            }
        }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
