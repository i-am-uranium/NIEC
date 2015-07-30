//
//  TPOTableViewCell.swift
//  NIEC
//
//  Created by Ravi Ranjan on 27/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class TPOTableViewCell: UITableViewCell {

    @IBOutlet weak var tpoSubtitle: UILabel!
    @IBOutlet weak var tpoTitle: UILabel!
    @IBOutlet weak var mail: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
