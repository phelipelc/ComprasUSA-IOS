//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by GVP on 20/02/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.IOF, withCurrency: "")
        tfStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues(){
          tc.dolar = tc.convertToDouble(tfDolar.text!)
          tc.IOF = tc.convertToDouble(tfIOF.text!)
          tc.stateTax = tc.convertToDouble(tfStateTaxes.text!)

    }
}

extension SettingsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
    
}
