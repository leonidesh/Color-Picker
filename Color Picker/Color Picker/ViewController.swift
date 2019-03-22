//
//  ViewController.swift
//  Color Picker
//
//  Created by 刘洋 on 3/22/19.
//  Copyright © 2019 Yang Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataSource = ["red","Orange","Yellow","Green","Blue","Purple"]
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = dataSource[row]
        switch row {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.orange
        case 2:
            self.view.backgroundColor = UIColor.yellow
        case 3:
            self.view.backgroundColor = UIColor.green
        case 4:
            self.view.backgroundColor = UIColor.blue
        case 5:
            self.view.backgroundColor = UIColor.purple
        default:
            break
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
}
