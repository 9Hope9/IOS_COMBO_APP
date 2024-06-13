//
//  CarTableViewCell.swift
//   Anjali_Jadav_MT_8971971
//
// Created by user240436 on 3/10/24.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
