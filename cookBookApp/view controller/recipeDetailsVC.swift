//
//  recipeDetailsVC.swift
//  cookBookApp
//
//  Created by sachin toskar on 26/02/21.
//  Copyright © 2021 sachin toskar. All rights reserved.
//

import UIKit
class recipeDetailsVC : UIViewController {
    
    @IBOutlet var recipeImg: UIImageView!
    @IBOutlet var recipeName: UILabel!
    
    var name = ""
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeName.text = name
        recipeImg.image = img
        

    }
}
