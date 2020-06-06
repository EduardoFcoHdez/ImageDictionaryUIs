//
//  MenuViewController.swift
//  ImageDictionary
//
//  Created by user1 on 05/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
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
        
        let scoreViewController = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
        self.navigationController?.pushViewController(scoreViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
