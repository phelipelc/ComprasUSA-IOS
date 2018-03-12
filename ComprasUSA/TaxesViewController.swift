//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by GVP on 20/02/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {
    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTax: UILabel!
    @IBOutlet weak var lbStateTaxDescription: UILabel!
    @IBOutlet weak var lbIOFDescription: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lbReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
        
    }
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    func calculateTaxes(){
        lbStateTaxDescription.text = "Imposto do Estado\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%"
        lbIOFDescription.text = "OF\(tc.getFormattedValue(of: tc.IOF, withCurrency: ""))%"
        
        lbDolar.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "US$")
        lbStateTax.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US")
        lbIOF.text = tc.getFormattedValue(of: tc.IOFValue, withCurrency: "US$")
        let real = tc.calculate(usingCrediCard: swCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$")
    }

   

}
