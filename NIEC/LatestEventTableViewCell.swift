//
//  LatestEventTableViewCell.swift
//  NIEC
//
//  Created by Ravi Ranjan on 25/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class LatestEventTableViewCell: UITableViewCell {

    
    @IBOutlet weak var eventTitle: UILabel!
    
    @IBOutlet weak var eventCatogary: UILabel!
    
    @IBOutlet weak var evetnDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
