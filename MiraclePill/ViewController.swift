//
//  ViewController.swift
//  MiraclePill
//
//  Created by  on 8/5/17.
//  Copyright © 2017 Ernest Sports. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipText: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        
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
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
 
        successImg.isHidden = false
    }
}

