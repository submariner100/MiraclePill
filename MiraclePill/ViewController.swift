//
//  ViewController.swift
//  MiraclePill
//
//  Created by Macbook on 26/09/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

  @IBOutlet weak var miracleImg: UIImageView!
  @IBOutlet weak var miracleLbl: UILabel!
  @IBOutlet weak var dollarLbl: UILabel!
  @IBOutlet weak var successImg: UIImageView!
  @IBOutlet weak var dividerImg: UIView!
  @IBOutlet weak var nameLbl: UILabel!
  @IBOutlet weak var nameTxt: UITextField!
  @IBOutlet weak var streetLbl: UILabel!
  @IBOutlet weak var streetTxt: UITextField!
  @IBOutlet weak var cityLbl: UILabel!
  @IBOutlet weak var cityTxt: UITextField!
  @IBOutlet weak var stateLbl: UILabel!
  @IBOutlet weak var statePicker: UIPickerView!
  @IBOutlet weak var statePickerBtn: UIButton!
  @IBOutlet weak var countryLbl: UILabel!
  @IBOutlet weak var countryText: UITextField!
  @IBOutlet weak var zipLbl: UILabel!
  @IBOutlet weak var zipText: UITextField!
  @IBOutlet weak var buyNowLbl: UIButton!
  
  let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
   statePicker.dataSource = self
   statePicker.delegate = self
   
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func stateBtnPressed(_ sender: AnyObject) {
  
    statePicker.isHidden = false
    countryLbl.isHidden = true
    countryText.isHidden = true
    zipLbl.isHidden = true
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
  
    statePickerBtn.setTitle(states[row], for: .normal)
    statePicker.isHidden = true
    
  }
  
  @IBAction func buyNowBtn(_ sender: AnyObject) {
  
    miracleImg.isHidden = true
    miracleLbl.isHidden = true
    dollarLbl.isHidden = true
    dividerImg.isHidden = true
    nameLbl.isHidden = true
    nameTxt.isHidden = true
    streetLbl.isHidden = true
    streetTxt.isHidden = true
    cityLbl.isHidden = true
    cityTxt.isHidden = true
    stateLbl.isHidden = true
    statePicker.isHidden = true
    statePickerBtn.isHidden = true
    countryLbl.isHidden = true
    countryText.isHidden = true
    zipLbl.isHidden = true
    zipText.isHidden = true
    buyNowLbl.isHidden = true
    successImg.isHidden = false
       
  }

}

