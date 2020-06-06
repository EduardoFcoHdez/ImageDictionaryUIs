//
//  ScoreViewController.swift
//  ImageDictionary
//
//  Created by user1 on 05/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit
import  MBCircularProgressBar

class ScoreViewController: UIViewController {

    @IBOutlet weak var viewLearned: MBCircularProgressBarView!
    @IBOutlet weak var viewLearnedInner: UIView!
    @IBOutlet weak var lblLearned: UILabel!
    
    @IBOutlet weak var viewStudy: MBCircularProgressBarView!
    @IBOutlet weak var viewStudyInner: UIView!
    @IBOutlet weak var lblStudy: UILabel!
    
    @IBOutlet weak var viewTime: MBCircularProgressBarView!
    @IBOutlet weak var viewTimeInner: UIView!
    @IBOutlet weak var lblTime: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Set view corner radius
        self.viewLearnedInner.layer.cornerRadius = self.viewLearnedInner.frame.height / 2.0
        self.viewLearnedInner.layer.masksToBounds = true
        
        self.viewStudyInner.layer.cornerRadius = self.viewStudyInner.frame.height / 2.0
        self.viewStudyInner.layer.masksToBounds = true
        
        self.viewTimeInner.layer.cornerRadius = self.viewTimeInner.frame.height / 2.0
        self.viewTimeInner.layer.masksToBounds = true

        
    }
    
    //MARK: - Custom Method

    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    

}
