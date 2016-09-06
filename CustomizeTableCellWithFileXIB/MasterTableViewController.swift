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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1: DataItem = DataItem.init(imLogo: "MU.png", nameFC: "Manchester United", nameStd: "Old Trafford", imgStart: 5)
        let item2: DataItem = DataItem.init(imLogo: "Arsenal.png", nameFC: "Arsenal", nameStd: "Emirates", imgStart: 4)
        let item3: DataItem = DataItem.init(imLogo: "Chelsea.png", nameFC: "Chelsea", nameStd: "Stamford Bridge", imgStart: 3)
        let item4: DataItem = DataItem.init(imLogo: "Liverpool.png", nameFC: "Liverpool", nameStd: "Anfield", imgStart: 3)
        let item5: DataItem = DataItem.init(imLogo: "MC.png", nameFC: "Manchester City", nameStd: "Etihad", imgStart: 5)
        
        arrData = [item1,item2,item3,item4,item5]
        
//        self.tableView.registerNib(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        let item: DataItem = arrData[indexPath.row]
        
        cell.imageLogo.image = item.imageLogo
        cell.imageRate.image = item.imageStartRating
        cell.lbName.text = item.nameFootballClub
        cell.lbStadium.text = item.nameStadium
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }
    
    
}
