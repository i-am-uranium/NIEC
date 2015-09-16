//
//  PostViewCell.swift
//  NIEC
//
//  Created by Ravi Ranjan on 09/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class PostViewCell: UITableViewCell {

    @IBOutlet var postMessage: UITextView!
    @IBOutlet var createdAt: UILabel!
    @IBOutlet var user: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
