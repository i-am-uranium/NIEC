//
//  NewsCell.swift
//  NIEC
//
//  Created by Ravi Ranjan on 26/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var endDate: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
