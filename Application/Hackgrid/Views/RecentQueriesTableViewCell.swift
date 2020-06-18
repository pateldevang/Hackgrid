//
//  RecentQueriesTableViewCell.swift
//  Hackgrid
//
//  Created by Aaryan Kothari on 26/03/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//

import UIKit

class RecentQueriesTableViewCell: UITableViewCell {

    @IBOutlet weak var queryLabel: UILabel!
    @IBOutlet weak var queryAnswerLabel: UILabel!
    @IBOutlet weak var querybackgroundView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
