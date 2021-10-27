//
//  ViewController.swift
//  SaveMyDefaults
//
//  Created by Alex Janci on 10/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(serialNumberTextField.text, forKey: "Text")
        UserDefaults.standard.set(testSwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(testSlider.value, forKey: "Slider")
    }
    
    @IBAction func loadButton(_ sender: Any) {
        testSwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        testSlider.value = UserDefaults.standard.float(forKey: "Slider")
        serialNumberTextField.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        testSwitch.isOn = true
        testSlider.value = 0.5
        serialNumberTextField.text = ""
    }
        
    @IBOutlet weak var serialNumberTextField: UITextField!
    
    @IBOutlet weak var testSlider: UISlider!
    
    @IBOutlet weak var testSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

