//
//  ViewController.swift
//  saveMYDefaultTabitaS
//
//  Created by Tabita Sadiq on 3/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func mySaveButton(_ sender: Any) {
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
        
        
       
                
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func myDeletebButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
    }
    
    
    
    
    
    @IBOutlet weak var mySerialNumber: UITextField!
    
    
    @IBOutlet weak var mySlider: UISlider!
    
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

