//
//  NotificationTableViewCell.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 09/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var notificationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

            // notificationLabel.padding
        // Configure the view for the selected state
       // notificationLabel.numberOfLines = infin
    }

}
