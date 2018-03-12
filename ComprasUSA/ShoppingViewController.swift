//
//  ViewController.swift
//  ComprasUSA
//
//  Created by GVP on 20/02/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var lbReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmount()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmount()
    }
    func setAmount(){
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "R$")
        let dolar = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: " ")
        lbRealDescription.text = ("Valor sem impostos (dólar\(dolar))")
    
    }

}

