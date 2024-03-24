//
//  Array+FirstFilterNamed.swift
//  
//
//  Created by Seb Vidal on 24/03/2024.
//

import Foundation

extension Array<NSObject> {
    func firstFilter(named name: String) -> NSObject? {
        return first { filter in
            filter.value(forBase64KeyPath: "ZmlsdGVyVHlwZQ==") as? String == name
        }
    }
}
