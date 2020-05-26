//
//  Product.swift
//  coder-swag
//
//  Created by clicklabs on 25/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import Foundation

struct Product{
    private(set) public var image: String;
    private(set) public var title: String;
    private(set) public var price: String;
    
    init(image: String, title: String, price: String){
        self.image = image;
        self.price = price;
        self.title = title;
    }
}
