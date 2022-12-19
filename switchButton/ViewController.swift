//
//  ViewController.swift
//  switchButton
//
//  Created by STC on 22/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var studentView: UIView!
    
    @IBOutlet weak var RollNotextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailIdTextField: UITextField!
    
    @IBOutlet weak var AddressTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func SwitchButton(_ sender: UISwitch) {
        
        
        
        if mySwitch.isOn == true{
            self.studentView.isHidden = false
        }
        else{
            self.studentView.isHidden = true
        }
    }
    
    @IBAction func submitbutton(_ sender: UIButton) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        let dataToPass1 = self.RollNotextField.text
        nav.dataFromFVC1 = dataToPass1
        let dataToPass2 = self.nameTextField.text
        nav.dataFromFVC2 = dataToPass2
        let dataToPass3 = self.emailIdTextField.text
        nav.dataFromFVC3 = dataToPass3
        let dataToPass4 = self.AddressTextField.text
        nav.dataFromFVC4 = dataToPass4
        navigationController?.pushViewController(nav, animated: true)
    }
}

