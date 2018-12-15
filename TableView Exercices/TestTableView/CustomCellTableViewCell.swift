//
//  CustomCellTableViewCell.swift
//  TestTableView
//
//  Created by Ada 2018 on 25/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
