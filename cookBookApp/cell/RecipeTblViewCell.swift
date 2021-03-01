//
//  RecipeTblViewCell.swift
//  cookBookApp
//
//  Created by sachin toskar on 26/02/21.
//  Copyright © 2021 sachin toskar. All rights reserved.
//

import UIKit

class RecipeTblViewCell: UITableViewCell {
    
    @IBOutlet var recipesImg: UIImageView!
    @IBOutlet var stateNameLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        recipesImg.imgmakeRounded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension UIImageView {

    func imgmakeRounded() {

        self.layer.borderWidth = 0
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = self.frame.height / 10
        self.clipsToBounds = true
    }
}
