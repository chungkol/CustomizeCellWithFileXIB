//
//  DetailViewController.swift
//  CustomizeTableCellWithFileXIB
//
//  Created by Chung on 9/7/16.
//  Copyright © 2016 newayplus. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageDetail: UIImageView!
    var stringTitle: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
       
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.title = stringTitle
        self.imageDetail.image = UIImage(named: "\(stringTitle).jpg")
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
