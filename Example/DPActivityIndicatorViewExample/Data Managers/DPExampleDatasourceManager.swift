//
//  DPExampleDatasource.swift
//  DPActivityIndicatorExample
//
//  Created by Dennis Pashkov on 4/14/16.
//  Copyright © 2016 Dennis Pashkov. All rights reserved.
//

import DPActivityIndicatorView

struct DPExampleTableViewCellViewModel {
    
    init(activityIndicatorStyle indicatorStyle: DPActivityIndicatorStyle) {
    
        activityIndicatorStyle = indicatorStyle
    }
    
    var activityIndicatorStyle: DPActivityIndicatorStyle
    
    func titleString() -> String! {
        
        return activityIndicatorStyle.displayValue()
    }
    
    func activityIndicator() -> DPActivityIndicatorView? {
        
        return DPActivityIndicatorView(style: activityIndicatorStyle)
    }
}

class DPExampleDatasourceManager: NSObject {
    
    @IBOutlet private weak var exampleTableView: UITableView? {
        
        didSet {
            
            let cellNib = UINib(nibName: DPActivityIndicatorCell.reuseIdentifier, bundle: nil)
            exampleTableView?.registerNib(cellNib, forCellReuseIdentifier: DPActivityIndicatorCell.reuseIdentifier)
            
            exampleTableView?.tableFooterView = UIView()
        }
    }
    
    private var _testData: [DPExampleTableViewCellViewModel]?
    private var testData: [DPExampleTableViewCellViewModel]! {
        
        if _testData == nil {
            
            _testData = []
            for style: DPActivityIndicatorStyle in DPActivityIndicatorStyle.allStyles() {
                
                _testData!.append(DPExampleTableViewCellViewModel(activityIndicatorStyle: style))
            }
        }
        
        return _testData!
    }
}

extension DPExampleDatasourceManager: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return testData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(DPActivityIndicatorCell.reuseIdentifier) as? DPActivityIndicatorCell

        if let viewModel = testData?[indexPath.row] {
            
            cell?.title = viewModel.titleString()
            cell?.activityIndicator = viewModel.activityIndicator()
            cell?.activityIndicator?.startAnimating()
        }
        
        return cell!
    }
}