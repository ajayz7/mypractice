//
//  MovieCollectionViewCell.swift
//  BollywoodCollectionView
//
//  Created by Ksheetij Tayde on 05/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var Movietitle: UILabel!
    func setup(with movies: Movies) {
        movieImageView.image = movies.image
        Movietitle.text = movies.title
    }
}
