//
//  CarsViewController.swift
//  Anjali_Jadav_MT_8971971
//
//  Created by user240436 on 3/10/24.
//

import UIKit

class CarsViewController: UIViewController {
    // Array to store types of cars
    var carsType = ["bmw", "ford", "gmc", "honda", "jeep", "volvo"];

    // Outlets
    @IBOutlet weak var nameOfCar: UILabel!
    @IBOutlet weak var imageOfCar: UIImageView!
    @IBOutlet weak var typeOfCar: UITextField!
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBOutlet weak var error: UILabel!
    
    override func viewDidLoad() {
        view.addGestureRecognizer(tapGesture)
        super.viewDidLoad()
    }
    // Action for tap gesture recognizer
    @IBAction func tapGesture(_ sender: Any) {
        view.endEditing(true)
    }

    // Action to search for a car
    @IBAction func searchCar(_ sender: Any) {
        if(typeOfCar.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""){
            error.text = "Please Enter Car Type";
        }else if(!carsType.contains(typeOfCar.text!.lowercased().trimmingCharacters(in: .whitespacesAndNewlines))){
            error.text = "Car Not Found";
        }else{
            error.text = ""
            imageOfCar.image = UIImage(named: typeOfCar.text!.lowercased().trimmingCharacters(in: .whitespacesAndNewlines))
            nameOfCar.text = typeOfCar.text;
            typeOfCar.text = "";
        }
    }
    
}
