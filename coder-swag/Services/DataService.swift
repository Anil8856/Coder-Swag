//
//  DataService.swift
//  coder-swag
//
//  Created by clicklabs on 25/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService(); //singleton instance, data will be holded by a single instance only
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITALS", imageName: "digital.png")
    ];
    
    private let hats = [
        Product(image: "hat01.png", title: "Developes Logo Graphic Beanic", price: "$18"),
        Product(image: "hat02.png", title: "Developes Logo Hat Black", price: "$22"),
        Product(image: "hat03.png", title: "Developes Logo Hat White", price: "$22"),
        Product(image: "hat04.png", title: "Developes Logo Snapback", price: "$20")
    ];
    
    private let hoodies = [
        Product(image: "hoodie01.png", title: "Developes Logo Hoodie Grey", price: "$32"),
        Product(image: "hoodie02.png", title: "Developes Logo Hoodie Red", price: "$32"),
        Product(image: "hoodie03.png", title: "Developes Logo Grey", price: "$32"),
        Product(image: "hoodie04.png", title: "Developes Logo Black", price: "$32")
    ];
    
    private let shirts = [
        Product(image: "shirt01.png", title: "Developes Logo Shirt Black", price: "$18"),
        Product(image: "shirt02.png", title: "Developes Badge Shirt Light Grey", price: "$19"),
        Product(image: "shirt03.png", title: "Developes Logo Shirt Red", price: "$18"),
        Product(image: "shirt04.png", title: "Hustle Delegate Grey", price: "$18"),
        Product(image: "shirt05.png", title: "Kickflip Studios Black", price: "$18")
    ];
    
    private let digitalGoods = [Product](); //empty array
    
    
    func getCategories() -> [Category] {
        return self.categories;
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
            case "SHIRTS":
                return getShirts();  //somewhat like server sends us
            case "HOODIES":
                return getHoodies();
            case "HATS":
                return getHats();
            case "DIGITALGOODS":
                return getDigitalGoods();
            default:
                return getShirts();
        }
    }
    
    func getHats() -> [Product]{
        return hats;
    }
    
    func getHoodies() -> [Product]{
        return hoodies;
    }
    
    func getShirts() -> [Product]{
        return shirts;
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods;
    }
    
}
