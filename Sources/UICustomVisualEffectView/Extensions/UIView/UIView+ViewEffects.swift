//
//  UIView+ViewEffects.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import UIKit

extension UIView {
    var viewEffects: [NSObject] {
        return value(forBase64KeyPath: "dmlld0VmZmVjdHM=") as? [NSObject] ?? []
    }
}
