//
//  TexasCalculator.swift
//  ComprasUSA
//
//  Created by GVPAir on 3/5/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import UIKit

class TexasCalculator {

    static let shared = TexasCalculator()
    var dolar: Double = 3.5
    var IOF: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0
    let formatter = NumberFormatter()
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    var stateTaxValue: Double {
        return shoppingValue * stateTax/100
    }
    var IOFValue: Double {
        return (shoppingValue+stateTax)*IOF/100
    }
    func calculate(usingCrediCard: Bool) -> Double{
        var finalValue = shoppingValue + stateTaxValue
        if usingCrediCard {
            finalValue += IOFValue
        }
        return finalValue * dolar
    }
    func convertToDouble(_ string: String)->Double {
        formatter.numberStyle = .none
            return formatter.number(from: string)!.doubleValue
    }
    func getFormattedValue(of value: Double, withCurrency currency: String)->String{
    formatter.numberStyle = .currency
    formatter.currencyCode = currency
    formatter.alwaysShowsDecimalSeparator = true
    return formatter.string(for: value)!
    }
    
    private init() {
        formatter.usesGroupingSeparator = true
    }
}
