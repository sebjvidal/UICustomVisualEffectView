//
//  Array+FirstOfClassType.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import UIKit

extension Array<UIView> {
    func first(of classType: String) -> UIView? {
        first { subview in
            return String(describing: type(of: subview)) == classType
        }
    }
}
