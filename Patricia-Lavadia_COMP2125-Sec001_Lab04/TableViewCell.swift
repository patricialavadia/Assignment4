//
//  TableViewCell.swift
//  Patricia-Lavadia_COMP2125-Sec001_Lab04
//
//  Created by Patricia Anjelica Lavadia on 2020-07-21.
//  Copyright © 2020 Patricia Anjelica Lavadia. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var MovieLabel: UILabel!
    @IBOutlet weak var ReleaseYearLabel: UILabel!
    @IBOutlet weak var MovieImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
