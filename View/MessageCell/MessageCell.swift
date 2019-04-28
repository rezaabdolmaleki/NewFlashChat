//
//  MessageCell.swift
//  NewChat
//
//  Created by reza abdolmaleki on 4/28/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var backgroundMessage: UIView!
    @IBOutlet weak var senderPicture: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var messageText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
