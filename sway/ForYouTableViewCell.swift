//
//  ForYouTableViewCell.swift
//  sway
//
//  Created by H.W. Hsiao on 2020/4/3.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit

class ForYouTableViewCell: UITableViewCell {

    @IBOutlet var coverCollection: [UIButton]!
    @IBOutlet var titleCollection: [UILabel]!
    @IBOutlet var singerCollection: [UILabel]!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
}
