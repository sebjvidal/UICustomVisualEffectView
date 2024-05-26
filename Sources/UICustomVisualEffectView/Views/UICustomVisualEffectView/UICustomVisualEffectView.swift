//
//  UICustomVisualEffectView.swift
//
//
//  Created by Seb Vidal on 24/03/2024.
//

import UIKit

open class UICustomVisualEffectView: UIVisualEffectView {
    // MARK: - Private Properties
    private var colorSaturate: NSObject? {
        return backdropView?.filters.firstFilter(named: String(base64: "Y29sb3JTYXR1cmF0ZQ=="))
    }
    
    private var gaussianBlur: NSObject? {
        return backdropView?.filters.firstFilter(named: String(base64: "Z2F1c3NpYW5CbHVy"))
    }
    
    private var sourceOver: NSObject? {
        return overlayView?.viewEffects.firstFilter(named: String(base64: "c291cmNlT3Zlcg=="))
    }
    
    // MARK: - Public Properties
    public var blurRadius: CGFloat {
        get {
            return gaussianBlur?.requestedValues[String(base64: "aW5wdXRSYWRpdXM=")] as? CGFloat ?? 0
        } set {
            applyChanges { [unowned self] in
                gaussianBlur?.requestedValues[String(base64: "aW5wdXRSYWRpdXM=")] = newValue
            }
        }
    }
    
    public override var tintColor: UIColor! {
        get {
            return sourceOver?.value(forBase64KeyPath: "Y29sb3I=") as? UIColor
        } set {
            applyChanges { [unowned self] in
                overlayView?.backgroundColor = newValue
                sourceOver?.setValue(newValue, forBase64KeyPath: "Y29sb3I=")
                sourceOver?.perform(selectorFromBase64String: "YXBwbHlSZXF1ZXN0ZWRFZmZlY3RUb1ZpZXc6", with: overlayView)
            }
        }
    }
    
    public var tintColorAlpha: CGFloat? {
        get {
            return overlayView?.alpha
        } set {
            overlayView?.alpha = newValue ?? 1
        }
    }
    
    public var saturation: CGFloat {
        get {
            return colorSaturate?.requestedValues[String(base64: "aW5wdXRBbW91bnQ=")] as? CGFloat ?? 0
        } set {
            applyChanges { [unowned self] in
                colorSaturate?.requestedValues[String(base64: "aW5wdXRBbW91bnQ=")] = newValue
            }
        }
    }
    
    // MARK: - Private Methods
    private func applyChanges(_ changesBlock: @escaping () -> Void) {
        self.effect = UIBlurEffect(style: .light)
        gaussianBlur?.setValue(1.0, forBase64KeyPath: "cmVxdWVzdGVkU2NhbGVIaW50")
        changesBlock()
        backdropView?.perform(selectorFromBase64String: "YXBwbHlSZXF1ZXN0ZWRGaWx0ZXJFZmZlY3Rz")
    }
}
