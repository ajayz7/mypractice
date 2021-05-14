//
//  ViewController.swift
//  CustomCellTableView
//
//  Created by Ksheetij Tayde on 04/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var countryTableView: UITableView!
    
    var countries = ["France","Germany","India","Japan","UK","USA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        countryTableView.dataSource = self
        countryTableView.delegate = self
        countryTableView.separatorStyle = .none //to make tv look good
        countryTableView.showsVerticalScrollIndicator = false
    }


}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, HeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "countryCell") as! CountryTVC
        let country = countries[indexPath.row]
        cell.countryLBl.text = country
        cell.countryImgView.image = UIImage(named: country)
        //make cell look good
        cell.countryView.layer.cornerRadius = cell.countryView.frame.height / 2
        cell.countryImgView.layer.cornerRadius = cell.countryImgView.frame.height / 2
        return cell
    }
    
    
}

