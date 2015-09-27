//
//  ViewController.swift
//  Example
//
//  Created by Robert Nash on 27/09/2015.
//  Copyright © 2015 Robert Nash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let
        constraints = [
            SWHConstraintType.CenterHorizontally(padding: 0),
            SWHConstraintType.CenterVertically(padding: 0),
            SWHConstraintType.Width(100),
            SWHConstraintType.Height(100)
        ]
        
        let
        demoView = UIView()
        demoView.translatesAutoresizingMaskIntoConstraints = false
        demoView.backgroundColor = UIColor.redColor()
        self.view.addSubview(demoView)
        
        SWHQuickConstraints.position(
            view: demoView,
            withinContainerView: self.view,
            usingConstraints: constraints
        )
    }

}

