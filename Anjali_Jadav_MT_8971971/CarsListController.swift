//
//  CarsListController.swift
//  Anjali_Jadav_MT_8971971
//
//  Created by user240436 on 3/10/24.
//

import UIKit

class CarsListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var carsTypes = ["bmw", "ford", "gmc", "honda", "jeep", "volvo"];
    @IBOutlet weak var carList: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsTypes.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Customcell", for: indexPath) as! CarTableViewCell
        
        if indexPath.row % 2 != 0 {
            cell.backgroundColor = UIColor.systemGray
        }else{
            cell.backgroundColor = UIColor.systemMint
        }
        cell.carImage.image = UIImage(named: carsTypes[indexPath.row]);
        cell.carName.text = carsTypes[indexPath.row];
        return cell;
    }
    
    override func viewDidLoad() {
        carList.delegate = self
        carList.dataSource = self
        super.viewDidLoad()
    }
}
