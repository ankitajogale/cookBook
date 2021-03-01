//
//  recipeListCell.swift
//  cookBookApp
//
//  Created by sachin toskar on 27/02/21.
//  Copyright © 2021 sachin toskar. All rights reserved.
//

import UIKit

class recipeListCell: UICollectionViewCell {
    
    @IBOutlet var recipesListImg: UIImageView!
    @IBOutlet var recipesNameLbl: UILabel!
    
   
    
    override func awakeFromNib() {
           super.awakeFromNib()
        recipesListImg.imgmakeRounded()
       }
}

