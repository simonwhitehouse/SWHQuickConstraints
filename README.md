# SWHQuickConstraints

## Description

Allows you to quickly and easily add simple constraints to a UIView

Using quick constraints you can easily mock up a view and constraint it with ease

## Usage

To use just add the SWHQuickConstraints.swift file to your project

## Example

Centering a view with 100 width and 100 height

        SWHQuickConstraints.addSubViewWithConstraints(testView, superView: container, quickConstraints: [
            .CenterHorizontal(padding: 0),
            .CenterVertically(padding: 100),
            .Width(width: 100),
            .Height(height: 100)
        ])
        
Result

![alt tag](http://s17.postimg.org/vbb50hy5b/Screen_Shot_2015_09_24_at_21_23_40.png)

## License

SWHQuickConstraints is released under the MIT license. See 'Licence' for details.
