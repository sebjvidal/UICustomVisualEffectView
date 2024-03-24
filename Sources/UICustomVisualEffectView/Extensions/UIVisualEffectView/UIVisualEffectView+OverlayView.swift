//
//  UIVisualEffectView+OverlayView.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import UIKit

extension UIVisualEffectView {
    internal var overlayView: UIView? {
        return subviews.first(of: String(base64: "X1VJVmlzdWFsRWZmZWN0U3Vidmlldw=="))
    }
}
