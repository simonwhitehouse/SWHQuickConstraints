//
//  SWHQuickConstraints.swift
//
//  Created by Simon J Whitehouse on 24/09/2015.
//  Copyright © 2015 co.swhitehouse. All rights reserved.
//

import Foundation
import UIKit

/// Enum explaining the type of constraint you want to add
enum SWHConstraintType {
    case PinToTop(padding: CGFloat)
    case PinToBottom(padding: CGFloat)
    case PinToLeft(padding: CGFloat)
    case PinToRight(padding: CGFloat)
    
    case Width(width: CGFloat)
    case Height(height: CGFloat)
    
    case CenterHorizontal(padding: CGFloat)
    case CenterVertically(padding: CGFloat)
    
}

/// A class for quickly adding constraints for a view
class SWHQuickConstraints {
    
    /**
        - adds one view as a subview of another
        - adds constraints for that view
    **/
    class func addSubViewWithConstraints(subview: UIView, superView: UIView, quickConstraints: [SWHConstraintType]) {
        superView.addSubview(subview)
        
        var allConstraints = [NSLayoutConstraint]()
        
        for quickConstraint in quickConstraints {
            if let constraints = buildConstraints(subview, quickConstraint: quickConstraint) {
                allConstraints.appendContentsOf(constraints)
            }
        }
        
        NSLayoutConstraint.activateConstraints(allConstraints)
    }
    
    
    class func buildConstraints(subview: UIView, quickConstraint: SWHConstraintType) -> [NSLayoutConstraint]? {
        
        let views = ["subview": subview]
        var visualFormatString: String?
        
        switch(quickConstraint) {
        case .PinToTop(let padding):
            visualFormatString = "V:|-(\(padding))-[subview]"
        case .PinToBottom(let padding):
            visualFormatString = "V:[subview]-(\(padding))-|"
        case .PinToLeft(let padding):
            visualFormatString = "H:|-(\(padding))-[subview]"
        case .PinToRight(let padding):
            visualFormatString = "H:[subview]-(\(padding))-|"
        case .Width(let width):
            visualFormatString = "H:[subview(==\(width))]"
        case .Height(let height):
            visualFormatString = "V:[subview(==\(height))]"
        case .CenterHorizontal(let padding):
            return [NSLayoutConstraint(item: subview,
                attribute: .CenterX,
                relatedBy: .Equal,
                toItem: subview.superview,
                attribute: .CenterX,
                multiplier: 1,
                constant: padding)]
        case .CenterVertically(let padding):
            return [NSLayoutConstraint(item: subview,
                attribute: .CenterY,
                relatedBy: .Equal,
                toItem: subview.superview,
                attribute: .CenterY,
                multiplier: 1,
                constant: padding)]
        }
        
        return NSLayoutConstraint.constraintsWithVisualFormat(visualFormatString!, options: [], metrics: nil, views: views)

    }
    
}