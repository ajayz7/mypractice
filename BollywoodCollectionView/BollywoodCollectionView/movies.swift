//
//  movies.swift
//  BollywoodCollectionView
//
//  Created by Ksheetij Tayde on 05/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

struct Movies  {
    let title: String
    let image: UIImage
}
let movies: [Movies] = [
    Movies(title: "DDLJ", image: #imageLiteral(resourceName: "ddlj.jpeg")),
    Movies(title: "Lagaan", image: #imageLiteral(resourceName: "Lagaan.jpeg" )),
    Movies(title: "Mother India", image: #imageLiteral(resourceName: "motherindia.jpeg")),
    Movies(title: "Rang De Basanti", image: #imageLiteral(resourceName: "Rangdebasanti.jpeg")),
    Movies(title: "Rockstar", image: #imageLiteral(resourceName: "rockstar.jpeg" )),
    Movies(title: "Sholay", image: #imageLiteral(resourceName: "sholay.jpeg"))
]
