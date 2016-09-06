//
//  DataItem.swift
//  CustomizeTableCell
//
//  Created by Chung on 9/6/16.
//  Copyright © 2016 newayplus. All rights reserved.
//

import UIKit
class DataItem{
    var imageLogo: UIImage!
    var nameFootballClub: String!
    var nameStadium: String!
    var imageStartRating: UIImage!
    
    init(imLogo: String, nameFC: String , nameStd: String, imgStart: Int){
        self.imageLogo = UIImage(named: imLogo)
        self.imageStartRating = UIImage(named: "\(imgStart)stars.png")
        self.nameFootballClub = nameFC
        self.nameStadium = nameStd
    }
}
