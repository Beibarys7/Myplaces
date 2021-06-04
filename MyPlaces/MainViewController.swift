//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Beibarys Shaggy on 03.06.2021.
//

import UIKit

class MainViewController: UITableViewController {
        
    let place = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return place.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustoTableViewCell
        
        cell.nameLabel?.text = place[indexPath.row].name
        cell.imageOfPlace?.image    = UIImage(named: place[indexPath.row].image)
        cell.imageOfPlace?.layer.cornerRadius = cell.frame.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}

}
