//
//  LanguageSaveViewController.swift
//  ImageDictionary
//
//  Created by Mayank Soni on 12/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit

class LanguageSaveViewController: UIViewController {

    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var btnNativeLanguage: UIButton!
    @IBOutlet weak var btnLearnLanguage: UIButton!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var btnCross: UIButton!
    @IBOutlet weak var btnNativeLanguageSec: UIButton!
    @IBOutlet weak var btnLearnLanguageSec: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
                
        // Set Corner Radius of cross button
        btnCross.layer.cornerRadius = btnCross.frame.width/2
        btnCross.clipsToBounds = true
        
        viewMain.layer.cornerRadius = 15
        viewMain.clipsToBounds = true
        
        btnSave.layer.cornerRadius = 20
        btnSave.clipsToBounds = true
        
        // Set view height according to screen
        if UIScreen.main.sizeType == .iPhone5 {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.78)
            
        } else if UIScreen.main.sizeType == .iPhone6 {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.67)
            
        } else if UIScreen.main.sizeType == .iPhone8Plus {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.62)
            
        } else if UIScreen.main.sizeType == .iPhoneXS {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.56)
            
        } else if UIScreen.main.sizeType == .iPhoneXR || UIScreen.main.sizeType == .iPhoneXSMax  {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.5)
        }
    }
    
    //MARK: - Custom Method
    
    @IBAction func nativeLanguage(_ sender: Any) {
        
        btnNativeLanguage.setBackgroundImage(UIImage(named: "english_select"), for: .normal)
        btnNativeLanguage.setTitle("English", for: .normal)
        
        btnNativeLanguageSec.setBackgroundImage(UIImage(named: "spanish_unselect"), for: .normal)
        btnNativeLanguageSec.setTitle("Spanish", for: .normal)
    }
    
    @IBAction func learnLanguage(_ sender: Any) {
        
        btnLearnLanguage.setBackgroundImage(UIImage(named: "spanish_select"), for: .normal)
        btnLearnLanguage.setTitle("Spanish", for: .normal)
        
        btnLearnLanguageSec.setBackgroundImage(UIImage(named: "english_unselect"), for: .normal)
        btnLearnLanguageSec.setTitle("English", for: .normal)
    }
    
    @IBAction func nativeLanguageSec(_ sender: Any) {
        
        btnNativeLanguage.setBackgroundImage(UIImage(named: "english_unselect"), for: .normal)
        btnNativeLanguage.setTitle("English", for: .normal)
        
        btnNativeLanguageSec.setBackgroundImage(UIImage(named: "spanish_select"), for: .normal)
        btnNativeLanguageSec.setTitle("Spanish", for: .normal)
    }
    
    @IBAction func learLanguageSec(_ sender: Any) {
        
        btnLearnLanguage.setBackgroundImage(UIImage(named: "spanish_unselect"), for: .normal)
        btnLearnLanguage.setTitle("Spanish", for: .normal)
        
        btnLearnLanguageSec.setBackgroundImage(UIImage(named: "english_select"), for: .normal)
        btnLearnLanguageSec.setTitle("English", for: .normal)
    }
    
    @IBAction func cross(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        
    }
}
