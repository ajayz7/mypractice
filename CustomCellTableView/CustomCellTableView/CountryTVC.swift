//
//  CountryTVC.swift
//  CustomCellTableView
//
//  Created by Ksheetij Tayde on 04/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

class CountryTVC: UITableViewCell {

    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var countryLBl: UILabel!
    @IBOutlet weak var countryImgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
