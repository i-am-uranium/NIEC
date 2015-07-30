//
//  ResourcesTableViewCell.swift
//  NIEC
//
//  Created by Ravi Ranjan on 21/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class ResourcesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var cellLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
