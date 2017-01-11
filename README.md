
[![JackTuck](https://img.shields.io/badge/tuck-approved-brightgreen.svg?logoWidth=1000)](https://github.com/jacktuck)

# SWHQuickConstraints

## Description

Allows you to quickly and easily add simple constraints to a UIView

Using quick constraints you can easily mock up a view and constraint it with ease

## Usage

To use just add the SWHQuickConstraints.swift file to your project

## Example

1. Centering a view with 100 width and 100 height

        SWHQuickConstraints.addSubViewWithConstraints(testView, superView: container, quickConstraints: [
            .CenterHorizontal(padding: 0),
            .CenterVertically(padding: 100),
            .Width(width: 100),
            .Height(height: 100)
        ])

2. Bottom bar with 100 height pin to left and right margins

        SWHQuickConstraints.addSubViewWithConstraints(testView, superView: container, quickConstraints: [
            .PinToBottom(padding: 0),
            .PinToLeft(padding: 0),
            .PinToRight(padding: 0),
            .Height(height: 100)
        ])

3. Top Bar with two subviews 

        SWHQuickConstraints.addSubViewWithConstraints(testView, superView: container, quickConstraints: [
            SWHConstraintType.PinToTop(padding: 0),
            .PinToLeft(padding: 0),
            .PinToRight(padding: 0),
            .Height(height: 40)
        ])

        let leftSubView = UIView(frame: CGRectMake(0, 0, 30, 30))
        leftSubView.backgroundColor = UIColor.whiteColor()

        SWHQuickConstraints.addSubViewWithConstraints(leftSubView, superView: testView, quickConstraints: [
            SWHConstraintType.CenterVertically(padding: 0),
            SWHConstraintType.PinToLeft(padding: 20),
            SWHConstraintType.Width(width: 30),
            SWHConstraintType.Height(height: 30)
        ])

        let rightSubview = UIView(frame: CGRectMake(0, 0, 30, 30))
        rightSubview.backgroundColor = UIColor.whiteColor()

        SWHQuickConstraints.addSubViewWithConstraints(rightSubview, superView: testView, quickConstraints: [
            SWHConstraintType.CenterVertically(padding: 0),
            SWHConstraintType.PinToRight(padding: 20),
            SWHConstraintType.Width(width: 30),
            SWHConstraintType.Height(height: 30)
        ])

Result

![alt tag](http://s17.postimg.org/vbb50hy5b/Screen_Shot_2015_09_24_at_21_23_40.png)
![alt tag](http://s1.postimg.org/pzclfzr9b/Screen_Shot_2015_09_24_at_21_42_10.png)

## License

SWHQuickConstraints is released under the MIT license. See 'Licence' for details.
