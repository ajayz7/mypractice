//
//  ViewController.swift
//  CountryCollectionView
//
//  Created by Ksheetij Tayde on 05/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countryCollectionView: UICollectionView!
    
    let countries = ["France","Germany","India","Japan","UK","USA"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countryCollectionView.delegate = self
        countryCollectionView.dataSource = self
        
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = countryCollectionView.dequeueReusableCell(withReuseIdentifier: "countryCell", for: indexPath) as! CountryCell
        cell.CountryImageView.image = UIImage(named: countries[indexPath.row])
        cell.layer.cornerRadius = cell.frame.height / 2
        return cell
    }


}




