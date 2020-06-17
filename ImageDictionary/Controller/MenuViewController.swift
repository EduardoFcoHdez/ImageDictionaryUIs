//
//  MenuViewController.swift
//  ImageDictionary
//
//  Created by user1 on 05/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet weak var table_View: UITableView!
    
    var arrTitle = NSArray()
    var arrIcon = NSArray()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
                
        arrTitle = ["Perfil", "Idiomas", "Puntuacion", "Evalua la app", "Soporte", "Accesso completa"]
        
        arrIcon = ["perfil", "idiomas", "puntuacian", "evalua_la_app", "soporte", "accesso"]
        
        table_View.tableFooterView = UIView()
    }
    
}

// For table view data source and delegate method
extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! MenuCell
        
        cell.selectionStyle = .none
        //cell.accessoryType = .disclosureIndicator
        
        cell.lblName.text = arrTitle[indexPath.row] as? String
        cell.imgIcon.image = UIImage(named:arrIcon[indexPath.row] as! String)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            let scoreViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(scoreViewController, animated: true)
            
        } else if indexPath.row == 1 {
            
            let scoreViewController = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
            self.navigationController?.pushViewController(scoreViewController, animated: true)
            
        } else if indexPath.row == 2 {
            
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let popupVC = storyboard.instantiateViewController(withIdentifier: "LanguageSaveViewController")
            popupVC.modalPresentationStyle = UIModalPresentationStyle .overFullScreen
            //popupVC.popoverPresentationController?.delegate = self
            self.present(popupVC, animated: true, completion: nil)
            
        } else if indexPath.row == 3 {
            
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let popupVC = storyboard.instantiateViewController(withIdentifier: "PurchaseLanguageViewController")
            popupVC.modalPresentationStyle = UIModalPresentationStyle .overFullScreen
            //popupVC.popoverPresentationController?.delegate = self
            self.present(popupVC, animated: true, completion: nil)
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
