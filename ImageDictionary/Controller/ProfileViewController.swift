//
//  ProfileViewController.swift
//  ImageDictionary
//
//  Created by Mayank Soni on 09/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var viewMyLanguage: UIView!
    @IBOutlet weak var viewMyLearning: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Set Corner Radius of image
        imgProfile.layer.cornerRadius = imgProfile.frame.width/2
        imgProfile.clipsToBounds = true
        imgProfile.layer.borderWidth = 1
        imgProfile.layer.borderColor = UIColor.black.cgColor
        
        // Set Corner Radius, border width and border color of view
        viewMyLanguage.layer.cornerRadius = 15
        viewMyLanguage.clipsToBounds = true
        viewMyLanguage.layer.borderWidth = 1.0
        viewMyLanguage.layer.borderColor = UIColor.lightGray.cgColor
        
        viewMyLearning.layer.cornerRadius = 15
        viewMyLearning.clipsToBounds = true
        viewMyLearning.layer.borderWidth = 1.0
        viewMyLearning.layer.borderColor = UIColor.lightGray.cgColor
        
        // Set view height according to screen
        if UIScreen.main.sizeType == .iPhone6 {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.74)
            
        } else if UIScreen.main.sizeType == .iPhone8Plus {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.73)
            
        } else if UIScreen.main.sizeType == .iPhoneXS || UIScreen.main.sizeType == .iPhoneXR || UIScreen.main.sizeType == .iPhoneXSMax {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.68)
        }
        
    }
    
    //MARK: - Custom Method

    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func editProfile(_ sender: Any) {
        
        ImagePicker().pickImage(self){ image in
            
            print(image)
            self.imgProfile.image = image
            //self.imageData = image.jpegData(compressionQuality: 0.5)!
        }
    }
    
}
