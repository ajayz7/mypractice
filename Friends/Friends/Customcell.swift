//
//  Customcell.swift
//  Friends
//
//  Created by Ksheetij Tayde on 03/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

class Customcell: UITableViewCell {
    @IBOutlet weak var friendview: UIView!
    
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var avatarimg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
