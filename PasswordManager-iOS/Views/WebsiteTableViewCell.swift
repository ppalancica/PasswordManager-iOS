//
//  WebsiteTableViewCell.swift
//  PasswordManager-iOS
//
//  Created by Pavel Palancica on 1/16/22.
//

import UIKit

class WebsiteTableViewCell: UITableViewCell {
    
    class var identifier: String {
        return String(describing: self)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
