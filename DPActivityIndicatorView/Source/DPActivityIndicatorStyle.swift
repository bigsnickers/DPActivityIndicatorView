//
//  DPActivityIndicatorStyle.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

public enum DPActivityIndicatorStyle: Int {
    
    case Native
    
    public func displayValue() -> String {
        
        switch ( self ) {
            
        case .Native:
            
            return "Native"
        }
    }
    
    public static func allStyles() -> [DPActivityIndicatorStyle] {
        
        return [.Native]
    }
}