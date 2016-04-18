//
//  DPNibLoading.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

internal protocol DPNibLoading {
    
    static func createFromNib() -> Self?
    
    static var nibName: String { get }
}