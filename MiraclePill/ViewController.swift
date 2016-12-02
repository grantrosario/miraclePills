//
//  ViewController.swift
//  MiraclePill
//
//  Created by Grant Rosario on 12/2/16.
//  Copyright © 2016 Grant Rosario. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipText: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Florida", "California", "Texas", "Mississippi", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipLabel.isHidden = true
        zipText.isHidden = true
        
    }
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successImage.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipLabel.isHidden = false
        zipText.isHidden = false
    }
    


}

