//
//  ViewController.swift
//  Friends
//
//  Created by Ksheetij Tayde on 03/05/21.
//  Copyright © 2021 rasika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var friendview: UITableView!
    
    let friends = ["Prerna", "Prapti", "Vaishanavi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        friendview.delegate = self
        friendview.dataSource = self
        friendview.allowsSelection = false
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = friendview.dequeueReusableCell(withIdentifier: "customcell") as! Customcell
        let friend = friends[indexPath.row]
        cell.avatarimg.image = UIImage(named: friend)
        cell.namelbl.text = friend
        
        return cell
    }
    
    
}
