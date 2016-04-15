//
//  DPActivityIndicatorContentView.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import UIKit

/*!
 Protocol for all activity indicator content views.
 */
internal protocol DPActivityIndicatorContentViewProtocol {
    
    /*!
     Starts animation.
     */
    func startAnimation()
    
    /*!
     Stops animation.
     */
    func stopAnimation()
    
    /*!
     Defines if is animating.
     
     - returns: Bool
     */
    func isAnimating() -> Bool
}

internal class DPActivityIndicatorContentView: UIView { }

extension DPActivityIndicatorContentView: DPActivityIndicatorContentViewProtocol {
    
    func startAnimation() {
        
        fatalError("Should be implemented in subclasses.")
    }
    
    func stopAnimation() {
        
        fatalError("Should be implemented in subclasses.")
    }
    
    func isAnimating() -> Bool {
        
        fatalError("Should be implemented in subclasses.")
    }
}

extension DPActivityIndicatorContentView: DPNibLoading {
    
    static func createFromNib() -> Self? {
        
        return (NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil).first as? NSObject)?.asSelf()
    }
    
    static var nibName: String {
        
        return ("\(self)" as NSString).lastPathComponent
    }
}