//
//  CustomNibTableViewCell.swift
//  Roktim_30023
//
//  Created by Bjit on 7/12/22.
//

import UIKit

class CustomNibTableViewCell: UITableViewCell {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
