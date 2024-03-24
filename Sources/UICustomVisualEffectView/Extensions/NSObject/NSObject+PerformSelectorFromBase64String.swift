//
//  NSObject+PerformSelectorFromBase64String.swift
//  
//
//  Created by Seb Vidal on 24/03/2024.
//

import Foundation

extension NSObject {
    func perform(selectorFromBase64String base64String: String) {
        let string = String(base64: base64String)
        let selector = NSSelectorFromString(string)
        perform(selector)
    }
}
