//
//  UIView+Filters.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import UIKit

extension UIView {
    var filters: [NSObject] {
        return value(forBase64KeyPath: "ZmlsdGVycw==") as? [NSObject] ?? []
    }
}
