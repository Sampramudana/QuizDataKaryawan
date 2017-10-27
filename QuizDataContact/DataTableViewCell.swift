//
//  DataTableViewCell.swift
//  QuizDataContact
//
//  Created by Sam Pramudana on 10/26/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelContact: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
