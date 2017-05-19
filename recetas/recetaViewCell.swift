//
//  recetaViewCell.swift
//  recetas
//
//  Created by masteraaa on 19/5/17.
//  Copyright © 2017 masteraaa. All rights reserved.
//

import UIKit

class recetaViewCell: UITableViewCell {

    @IBOutlet weak var imagenCellReceta: UIImageView!
    
    @IBOutlet weak var labelCellReceta: UILabel!
    
    
    override func awakeFromNib() {
        
       
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
