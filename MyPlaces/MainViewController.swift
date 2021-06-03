//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Beibarys Shaggy on 03.06.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let resNames = ["Bonsai","Burger Heroes","Kitchen","Love&Life","Morris Pub","Sherlock Holmes","Speak Easy","X.O"]
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = resNames[indexPath.row]
        cell.imageView?.image = UIImage(named: resNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

}
