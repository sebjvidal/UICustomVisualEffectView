//
//  UIVisualEffectView+BackdropView.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import UIKit

extension UIVisualEffectView {
    internal var backdropView: UIView? {
        return subviews.first(of: String(base64: "X1VJVmlzdWFsRWZmZWN0QmFja2Ryb3BWaWV3"))
    }
}
