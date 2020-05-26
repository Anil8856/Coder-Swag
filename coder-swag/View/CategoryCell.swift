//
//  CategoryCell.swift
//  coder-swag
//
//  Created by clicklabs on 25/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!;
    @IBOutlet weak var categoryTitle: UILabel!;
    

    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName);
        categoryTitle.text = category.title;
    }

}
