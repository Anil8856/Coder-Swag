//
//  ProductVC.swift
//  coder-swag
//
//  Created by clicklabs on 25/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellSize = CGSize(width:192 , height:270);
        let layout = UICollectionViewFlowLayout();
        layout.scrollDirection = .vertical; //.horizontal
        layout.itemSize = cellSize;
        productsCollection.setCollectionViewLayout(layout, animated: true);

        productsCollection.dataSource = self;
        productsCollection.delegate = self;
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title);
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row];
            cell.updateViews(product: product);
            return cell;
        }

        return ProductCell();
    }
    
    
}
