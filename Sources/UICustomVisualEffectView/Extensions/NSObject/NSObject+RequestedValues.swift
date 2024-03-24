//
//  NSObject+RequestedValues.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import Foundation

extension NSObject {
    // MARK: - Private Properties
    private var keyPath: String {
        return String(base64: "cmVxdWVzdGVkVmFsdWVz")
    }
    
    // MARK: - Internal Properties
    internal var requestedValues: [String: Any] {
        get {
            return value(forKeyPath: keyPath) as? [String: Any] ?? [:]
        } set {
            setValue(newValue, forKeyPath: keyPath)
        }
    }
}
