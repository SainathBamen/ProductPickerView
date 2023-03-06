//
//  ViewController.swift
//  Product PickerView
//
//  Created by sainath bamen on 31/01/23.
//

import UIKit

class ViewController: UIViewController {
    var macbookImage = ["MACBOOK AIR", "MACBOOK M2", "MACBOOK M2", "ipad", "iphone"]
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLable: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myLable.layer.borderWidth = 2
        myLable.layer.borderColor = UIColor.systemRed.cgColor
        myLable.layer.cornerRadius = 25
        doneButton.layer.cornerRadius = 30
        
        
    }

    @IBAction func doneButton(_ sender: Any) {
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return macbookImage.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return macbookImage[row].capitalized
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLable.text = macbookImage[row].capitalized
        myImageView.image = UIImage(named: macbookImage[row])
    }
    
    
}
