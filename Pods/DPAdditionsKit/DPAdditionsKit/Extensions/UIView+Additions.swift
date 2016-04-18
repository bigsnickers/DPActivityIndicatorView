//
//  UIView+Additions.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import UIKit

extension UIView {
    
    public func removeAllSubviews() {
        
        while subviews.count > 0 {
            
            subviews.last?.removeFromSuperview()
        }
    }
    
    public func stickToSuperview() {
        
        guard superview != nil else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        let viewDictionary = ["self" : self]
        
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[self]-0-|", options: .DirectionLeadingToTrailing, metrics: nil, views: viewDictionary)
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[self]-0-|", options: .DirectionLeadingToTrailing, metrics: nil, views: viewDictionary)
        
        superview?.addConstraints(horizontalConstraints)
        superview?.addConstraints(verticalConstraints)

        superview?.setNeedsLayout()
        superview?.layoutIfNeeded()
    }
}