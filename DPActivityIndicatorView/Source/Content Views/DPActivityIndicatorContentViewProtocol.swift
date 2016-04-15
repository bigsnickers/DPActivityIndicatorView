//
//  DPActivityIndicatorContentViewProtocol.swift
//  DPActivityIndicatorView
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

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