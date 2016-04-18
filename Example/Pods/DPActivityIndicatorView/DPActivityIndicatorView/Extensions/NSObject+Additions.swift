//
//  NSObject+Additions.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import Foundation

extension NSObject {
    
    /*!
     Returns the receiver as Self.
     
     - returns: Receiver as Self
     */
    func asSelf<T>() -> T! {
        
        return self as! T
    }
}