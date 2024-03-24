//
//  NSObject+PerformSelectorFromBase64StringWithObject.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import Foundation

extension NSObject {
    func perform(selectorFromBase64String base64String: String, with object: Any?) {
        let string = String(base64: base64String)
        let selector = NSSelectorFromString(string)
        perform(selector, with: object)
    }
}
