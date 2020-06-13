//
//  PurchaseLanguageViewController.swift
//  ImageDictionary
//
//  Created by Mayank Soni on 12/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit

class PurchaseLanguageViewController: UIViewController {

    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var btnLanguage: UIButton!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        print(UIScreen.main.sizeType)
        
        // Set view height according to screen
        if UIScreen.main.sizeType == .iPhone5 {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.78)
            
        } else if UIScreen.main.sizeType == .iPhone6 {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.63)
            
        } else if UIScreen.main.sizeType == .iPhone8Plus {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.58)
            
        } else if UIScreen.main.sizeType == .iPhoneXS {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.53)
            
        } else if UIScreen.main.sizeType == .iPhoneXR || UIScreen.main.sizeType == .iPhoneXSMax  {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.47)
        }
    }
    
    //MARK: - Custom Method
    
    @IBAction func cross(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func language(_ sender: Any) {
        
    }
    
}
