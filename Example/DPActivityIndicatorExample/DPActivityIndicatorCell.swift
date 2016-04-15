//
//  DPActivityIndicatorCell.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/15/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import UIKit

class DPActivityIndicatorCell: UITableViewCell {
    
    //MARK: - Public -
    //MARK: Properties
    
    static var reuseIdentifier: String! {
        
        return "\(self)"
    }
    
    var title: String? {
        
        didSet {
            
            titleLabel?.text = title;
        }
    }
    
    var activityIndicator: DPActivityIndicatorView? {
        
        didSet {
            
            guard activityIndicator != nil else {
                
                activityIndicatorContainer?.removeAllSubviews()
                return
            }
            
            addActivityIndicator()
        }
    }
    
    //MARK: - Private -
    //MARK: Properties
    
    @IBOutlet private weak var titleLabel: UILabel?

    @IBOutlet private weak var activityIndicatorContainer: UIView?
    
    //MARK: Methods
    
    private func addActivityIndicator() {
        
        guard activityIndicator != nil && activityIndicatorContainer != nil else { return }
        
        activityIndicatorContainer?.addSubview(activityIndicator!)
        activityIndicator?.stickToSuperview()
    }
}