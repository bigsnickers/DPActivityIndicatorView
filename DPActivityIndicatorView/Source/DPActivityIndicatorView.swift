//
//  DPActivityIndicatorView.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/14/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import UIKit

public class DPActivityIndicatorView: UIView {
    
    //MARK: - Public -
    //MARK: Properties
    
    public var hidesWhenStopped: Bool = false
    
    public private(set) var activityIndicatorStyle: DPActivityIndicatorStyle = .Native {
        
        didSet {
            
            reloadContentView()
        }
    }
    
    //MARK: Methods
    
    public required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public override init(frame: CGRect) {
        
        super.init(frame: frame)
        commonInit()
    }
    
    public init(style: DPActivityIndicatorStyle) {
        
        self.init()
        
        commonInit()
        
        activityIndicatorStyle = style
    }
    
    public func startAnimating() {
        
        for contentView in subviews where contentView is DPActivityIndicatorContentView {
            
            let indicatorContentView = contentView as! DPActivityIndicatorContentView
            indicatorContentView.startAnimation()
        }
    }
    
    public func stopAnimating() {
        
        for contentView in subviews where contentView is DPActivityIndicatorContentView {
            
            let indicatorContentView = contentView as! DPActivityIndicatorContentView
            indicatorContentView.stopAnimation()
        }
    }
    
    public func isAnimating() -> Bool {
        
        for contentView in subviews where contentView is DPActivityIndicatorContentView {
            
            let indicatorContentView = contentView as! DPActivityIndicatorContentView
            if indicatorContentView.isAnimating() {
                
                return true
            }
        }
        
        return false
    }
    
    //MARK: - Private -
    //MARK: Methods
    
    private func commonInit() {
        
        activityIndicatorStyle = .Native
    }
    
    private func reloadContentView() {
        
        removeAllSubviews()
        
        var contentView: UIView?
        
        switch activityIndicatorStyle {
            
            case .Native:
            
                contentView = DPActivityIndicatorNativeContentView.createFromNib()
                break
        }
        
        guard contentView != nil else { return }
        
        addSubview(contentView!)
        contentView?.stickToSuperview()
        
        let indicatorContentView = contentView as? DPActivityIndicatorContentView
        
        if isAnimating() {
            
            indicatorContentView?.startAnimation()
        }
        else {
            
            indicatorContentView?.stopAnimation()
        }
    }
}