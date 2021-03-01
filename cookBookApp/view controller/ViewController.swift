//
//  ViewController.swift
//  cookBookApp
//
//  Created by sachin toskar on 26/02/21.
//  Copyright © 2021 sachin toskar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate, UISearchBarDelegate {
   
    @IBOutlet var recipeTblView: UITableView!
   
    let state: [String] = ["Maharashtra","Gujrat","South-Indian","Panjab","Rajanstan",]
    let indianFood = [UIImage(named: "maharshtra"),UIImage(named: "Gujrat"),UIImage(named: "south-Indian"),UIImage(named: "panjab"),UIImage(named: "rajasthan")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeTblView.backgroundColor = .gray
        self.navigationItem.title = "Indian Recipes"
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return state.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let vc = recipeTblView.dequeueReusableCell(withIdentifier: "cell") as! RecipeTblViewCell
        
        vc.stateNameLbl.text = state[indexPath.row]
        vc.recipesImg.image = indianFood[indexPath.row]
        
        
        vc.backgroundColor = .black
        vc.shadow()
        
        return vc
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "recipesListVC") as! recipesListVC
        
        vc.myTitle = state[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
 
    
    }
extension UITableViewCell{
        func shadow(){
            self.contentView.layer.cornerRadius = 20
            self.contentView.layer.borderWidth = 1.0
            self.contentView.layer.borderColor = UIColor.black.cgColor
            self.contentView.layer.masksToBounds = true
        
            self.layer.shadowColor = UIColor.gray.cgColor
            self.layer.shadowOffset = CGSize(width: 5, height: 0)
            self.layer.shadowRadius = 1.0
            self.layer.shadowOpacity = 0.5
            self.layer.masksToBounds = false
        }
    }
   

