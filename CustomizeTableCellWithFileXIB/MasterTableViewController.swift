//
//  MasterTableViewController.swift
//  CustomizeTableCellWithFileXIB
//
//  Created by Chung on 9/6/16.
//  Copyright © 2016 newayplus. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    var arrData: [DataItem]!
    var detailVC: DetailViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1: DataItem = DataItem.init(imLogo: "MU.png", nameFC: "Manchester United", nameStd: "Old Trafford", imgStart: 5)
        let item2: DataItem = DataItem.init(imLogo: "Arsenal.png", nameFC: "Arsenal", nameStd: "Emirates", imgStart: 4)
        let item3: DataItem = DataItem.init(imLogo: "Chelsea.png", nameFC: "Chelsea", nameStd: "Stamford Bridge", imgStart: 3)
        let item4: DataItem = DataItem.init(imLogo: "Liverpool.png", nameFC: "Liverpool", nameStd: "Anfield", imgStart: 3)
        let item5: DataItem = DataItem.init(imLogo: "MC.png", nameFC: "Manchester City", nameStd: "Etihad", imgStart: 5)
        
        arrData = [item1,item2,item3,item4,item5]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        let item: DataItem = arrData[indexPath.row]
        
        cell.imLogoCell.image = item.imageLogo
        cell.imRateCell.image = item.imageStartRating
        cell.lbNameCell.text = item.nameFootballClub
        cell.lbStadiumCell.text = item.nameStadium
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailViewController
        }
        let item: DataItem = arrData[indexPath.row]
        detailVC.stringTitle = item.nameStadium
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }
    
    
}
