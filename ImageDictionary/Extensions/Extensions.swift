//
//  Extensions.swift
//  ImageDictionary
//
//  Created by Mayank Soni on 08/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import Foundation
import UIKit

// For get screen size
extension UIScreen {
    
    enum SizeType: CGFloat {
        case Unknown = 0.0
        case iPhone4 = 960.0
        case iPhone5 = 1136.0
        case iPhone6 = 1334.0
        case iPhoneXR = 1792.0
        case iPhone6Plus = 1920.0
        case iPhone8Plus = 2208.0
        case iPhone11Pro = 2426.0
        case iPhoneXS = 2436.0
        case iPhoneXSMax = 2688.0
    }
    
    var sizeType: SizeType {
        let height = nativeBounds.height
        guard let sizeType = SizeType(rawValue: height) else { return .Unknown }
        return sizeType
    }
}

// For set LayoutConstraint of view according to screen size
// Set the view or other things and set multiplier according to screen size use this code in profile view controller, LanguageSaveViewController and PurchaseLanguageViewController
extension NSLayoutConstraint {
    
    func setMultiplier(multiplier:CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint(
            item: firstItem,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        
        newConstraint.priority = priority
        newConstraint.shouldBeArchived = shouldBeArchived
        newConstraint.identifier = identifier
        
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}
