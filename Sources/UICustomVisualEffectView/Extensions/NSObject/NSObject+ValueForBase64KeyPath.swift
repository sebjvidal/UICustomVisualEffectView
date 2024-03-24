//
//  NSObject+ValueForBase64KeyPath.swift
//  
//
//  Created by Seb Vidal on 24/03/2024.
//

import Foundation

extension NSObject {
    func value(forBase64KeyPath base64KeyPath: String) -> Any? {
        return value(forKeyPath: String(base64: base64KeyPath))
    }
}
