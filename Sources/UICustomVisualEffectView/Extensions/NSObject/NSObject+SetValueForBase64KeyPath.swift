//
//  NSObject+SetValueForBase64KeyPath.swift
//  
//
//  Created by Seb Vidal on 24/03/2024.
//

import Foundation

extension NSObject {
    func setValue(_ value: Any?, forBase64KeyPath base64KeyPath: String) {
        setValue(value, forKeyPath: String(base64: base64KeyPath))
    }
}
