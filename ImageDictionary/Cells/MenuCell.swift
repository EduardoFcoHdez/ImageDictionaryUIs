//
//  MenuCell.swift
//  ImageDictionary
//
//  Created by user1 on 05/06/20.
//  Copyright © 2020 user1. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
