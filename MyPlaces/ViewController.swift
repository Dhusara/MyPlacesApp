//
//  ViewController.swift
//  MyPlaces
//
//  Created by Serhii Demianenko on 13.01.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let restaurantNames = ["Adelle", "ChinaHi", "Kuvshin", "KyivFoodMarket", "Lyubimy dyadya",
                           "MilkBar", "Napule", "ThailandHi", "Veranda On The River", "VietnamHi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel?.text = restaurantNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    // MARK - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
    

}

