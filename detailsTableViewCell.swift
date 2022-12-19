//
//  detailsTableViewCell.swift
//  switchButton
//
//  Created by STC on 22/11/22.
//

import UIKit

class detailsTableViewCell: UITableViewCell {

    @IBOutlet weak var rollNo: UILabel!
    
    @IBOutlet weak var StudentName: UILabel!
    
    
    @IBOutlet weak var studentEmail: UILabel!
    
    @IBOutlet weak var studentAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
