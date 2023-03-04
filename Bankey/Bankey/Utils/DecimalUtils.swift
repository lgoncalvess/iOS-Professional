//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Leonardo Gonçalves on 04/03/23.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
