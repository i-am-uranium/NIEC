//
//  ResourcesTableView.swift
//  NIEC
//
//  Created by Ravi Ranjan on 21/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class ResourcesTableView: UITableViewController {
    
    let cellTitle = ["BBD CAMPUS","Akhilesh Das Gupta","Alka Das Gupta","Babu Banarsi Das Gupta","Akhilesh Das Gupta","Alka Das Gupta"]
    
    let titleImage = ["bbd","akhilesh","alka","babu","ServicesImage4","ServicesImage1"]
    
    let intro = ["The campus is adorned with a gracious wonder in white marble and sand stone in Lord Ganesha blesses the campus and its inhabitants with peace, security and hap Lucknow campus spread over 400 acres of lush-green student friendly environi located on the main Lucknow-Faizabad Highway, 13 kms. from Lucknow Railway Station touching residential colonies such as Indira Nagar & Gomti Nagar.",
        "PUBLIC LIFE: Dr. Akhilesh Das Gupta decided to follow his father's footprints by choosing Social Service as his prime goal. In his distinguished public life spanning well over three decades, Dr. Gupta was first elected as the Mayor of Lucknow in year 1993 and rightly hailed as one of the youngest Mayors of the world. Subsequently, he was elected as a Member of Parilament (Rajya Sabha) in November 1996 and was re-elected for a second term in November 2002 till November 2008. Dr. Gupta has been again elected as a Member of Parliament (Rajya Sabha) for a third consecutive term in 2008 till 2014. Dr. Gupta has been a member of many important Parliamentary Committees and National level apex Advisory & Statutory Bodies including the AIIMS. He has been a member of the Executive Committee of AICTE.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.",
        "PUBLIC LIFE: Dr. Akhilesh Das Gupta decided to follow his father's footprints by choosing Social Service as his prime goal. In his distinguished public life spanning well over three decades, Dr. Gupta was first elected as the Mayor of Lucknow in year 1993 and rightly hailed as one of the youngest Mayors of the world. Subsequently, he was elected as a Member of Parilament (Rajya Sabha) in November 1996 and was re-elected for a second term in November 2002 till November 2008. Dr. Gupta has been again elected as a Member of Parliament (Rajya Sabha) for a third consecutive term in 2008 till 2014. Dr. Gupta has been a member of many important Parliamentary Committees and National level apex Advisory & Statutory Bodies including the AIIMS. He has been a member of the Executive Committee of AICTE.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.",
        "PUBLIC LIFE: Dr. Akhilesh Das Gupta decided to follow his father's footprints by choosing Social Service as his prime goal. In his distinguished public life spanning well over three decades, Dr. Gupta was first elected as the Mayor of Lucknow in year 1993 and rightly hailed as one of the youngest Mayors of the world. Subsequently, he was elected as a Member of Parilament (Rajya Sabha) in November 1996 and was re-elected for a second term in November 2002 till November 2008. Dr. Gupta has been again elected as a Member of Parliament (Rajya Sabha) for a third consecutive term in 2008 till 2014. Dr. Gupta has been a member of many important Parliamentary Committees and National level apex Advisory & Statutory Bodies including the AIIMS. He has been a member of the Executive Committee of AICTE.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.","PUBLIC LIFE: Dr. Akhilesh Das Gupta decided to follow his father's footprints by choosing Social Service as his prime goal. In his distinguished public life spanning well over three decades, Dr. Gupta was first elected as the Mayor of Lucknow in year 1993 and rightly hailed as one of the youngest Mayors of the world. Subsequently, he was elected as a Member of Parilament (Rajya Sabha) in November 1996 and was re-elected for a second term in November 2002 till November 2008. Dr. Gupta has been again elected as a Member of Parliament (Rajya Sabha) for a third consecutive term in 2008 till 2014. Dr. Gupta has been a member of many important Parliamentary Committees and National level apex Advisory & Statutory Bodies including the AIIMS. He has been a member of the Executive Committee of AICTE.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.",
        "PUBLIC LIFE: Dr. Akhilesh Das Gupta decided to follow his father's footprints by choosing Social Service as his prime goal. In his distinguished public life spanning well over three decades, Dr. Gupta was first elected as the Mayor of Lucknow in year 1993 and rightly hailed as one of the youngest Mayors of the world. Subsequently, he was elected as a Member of Parilament (Rajya Sabha) in November 1996 and was re-elected for a second term in November 2002 till November 2008. Dr. Gupta has been again elected as a Member of Parliament (Rajya Sabha) for a third consecutive term in 2008 till 2014. Dr. Gupta has been a member of many important Parliamentary Committees and National level apex Advisory & Statutory Bodies including the AIIMS. He has been a member of the Executive Committee of AICTE.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders.He also served with distinction as the Union Minister of State for Steel, Goverment of India and made a place for himself as one of the foremost National leaders."]


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100.0
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        //create a custom backbutton
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cellTitle.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : ResourcesTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ResourcesTableViewCell

        cell.cellLabel.text = cellTitle[indexPath.row]
        
        let myImage = UIImage(named: titleImage[indexPath.row])
        cell.cellImage.image = myImage
        
        // to create a circular view for the imageView
        cell.cellImage.layer.cornerRadius = cell.cellImage.frame.width / 2
        cell.cellImage.clipsToBounds = true
        
        //to create the boarder of the circular image
        cell.cellImage.layer.borderWidth = 2.0
        cell.cellImage.layer.borderColor = UIColor.whiteColor().CGColor
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.clearColor()
        }else{
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        }

        return cell
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "detailView"){
            let vc  = segue.destinationViewController as! ResourcesDetails
            if  let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                
                
                let Title = cellTitle[indexPath.row] as String
                vc.resourceTitle = Title
                let ImageTitle = titleImage[indexPath.row] as String
                vc.imageTitle = ImageTitle
                let tv = intro[indexPath.row] as String
                vc.stringDetails = tv
            }
        
        }
    }
   

}
