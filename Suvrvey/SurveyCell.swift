//
//  SurveyCell.swift
//  Suvrvey
//
//  Created by Nick Scheele on 5/7/19.
//  Copyright © 2019 Malik Ata. All rights reserved.
//

import UIKit

class SurveyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var surveyTitleLabel: UILabel!
    @IBOutlet weak var surveyCreatorLabel: UILabel!
    
}
