//
//  DPActivityIndicatorNativeContentView.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import UIKit

internal class DPActivityIndicatorNativeContentView: DPActivityIndicatorContentView {

    @IBOutlet private weak var nativeActivityIndicator: UIActivityIndicatorView?
}

extension DPActivityIndicatorNativeContentView {
    
    override func startAnimation() {
        
        nativeActivityIndicator?.startAnimating()
    }
    
    override func stopAnimation() {
        
        nativeActivityIndicator?.stopAnimating()
    }
    
    override func isAnimating() -> Bool {
        
        if nativeActivityIndicator == nil {
            
            return false
        }
        else {
            
            return nativeActivityIndicator!.isAnimating()
        }
    }
}