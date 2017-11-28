//
//  CustomTableViewCell.swift
//  FireMsn
//
//  Created by practica on 27/11/17.
//  Copyright © 2017 practica. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSender: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
