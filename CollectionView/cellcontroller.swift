//
//  cellcontroller.swift
//  CollectionView
//
//  Created by Diego on 05/02/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import UIKit

class cellcontroller: UICollectionViewCell {
    
    @IBOutlet weak var imagecell: UIImageView!
    @IBOutlet weak var labelcell: UILabel!
    
    
    
    func displaycontent(image:UIImage, title:String)
    {
        imagecell.image = image
        labelcell.text = title
    }
}
