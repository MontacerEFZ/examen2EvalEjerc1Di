//
//  CeldaTableViewCell.swift
//  examen2EvalEjerc1Di
//
//  Created by Montacer El Fazazi on 09/02/2024.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbExplorer: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbSymbol: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
