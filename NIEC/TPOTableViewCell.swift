import UIKit

class TPOTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tpoSubtitle: UILabel!
    @IBOutlet weak var tpoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
