//
//  recipesListVC.swift
//  cookBookApp
//
//  Created by sachin toskar on 27/02/21.
//  Copyright © 2021 sachin toskar. All rights reserved.
//

import UIKit

class recipesListVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UISearchBarDelegate {
    
  
    @IBOutlet var recipesCollCell: UICollectionView!
    
    
    var myTitle = ""
    
    let recipeList = [UIImage(named: "aluvadi"),UIImage(named: "bhakarvadi"),UIImage(named: "misal-pav"),UIImage(named: "vadapav"),UIImage(named: "dhokla"),UIImage(named: "Masala dosa"),UIImage(named: "Sambar"),UIImage(named: "Upma"),UIImage(named: "Butter Chicken"),UIImage(named: "Lassi"),UIImage(named: "chole"),UIImage(named: "Dal Bati Churma")]
    var nameOfRecipes = [String]()
     
    var dic : [String: [String]] = ["Maharashtra":["aluvadi","bhakarvadi","misal-pav","vadapav"],"Gujrat":["dhokla","dhokla"],"South-Indian":["Masala dosa","Sambar","Upma"],"Panjab":["Butter Chicken","Lassi","chole"],"Rajanstan":["Dal Bati Churma","Dal Bati Churma"]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = myTitle

        nameOfRecipes = dic[myTitle]!
       
    
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameOfRecipes.count
       }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recipesCollCell.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! recipeListCell
        cell.recipesListImg.image = UIImage(named: nameOfRecipes[indexPath.row] )
        cell.recipesNameLbl.text = nameOfRecipes[indexPath.row]
        
        cell.shadow()
        
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "recipeDetailsVC") as! recipeDetailsVC
        
        vc.name = nameOfRecipes[indexPath.row]
        vc.img = recipeList[indexPath.row]!
        
        
        navigationController?.pushViewController(vc, animated: true)
    }
    

   
   
}




extension UICollectionViewCell{
     func shadow(){
         self.contentView.layer.cornerRadius = 10
         self.contentView.layer.borderWidth = 2
         self.contentView.layer.borderColor = UIColor.clear.cgColor
         self.contentView.layer.masksToBounds = true
     
         self.layer.shadowColor = UIColor.gray.cgColor
         self.layer.shadowOffset = CGSize(width: 5, height: 0)
         self.layer.shadowRadius = 1.0
         self.layer.shadowOpacity = 0.5
         self.layer.masksToBounds = false
     }
 }


