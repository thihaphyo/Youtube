//
//  MenuCell.swift
//  Youtube
//
//  Created by Phyo Thiha on 6/5/18.
//  Copyright © 2018 Phyo Thiha. All rights reserved.
//

import UIKit

class MenuCell: BaseCell {
    
    let menuIcon:UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "home")?.withRenderingMode(.alwaysTemplate)
        iv.tintColor = icon_unselected_color
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override var isHighlighted: Bool{
        didSet{
            menuIcon.tintColor = isHighlighted ? icons : icon_unselected_color
        }
    }
    override var isSelected: Bool{
        
        didSet{
            menuIcon.tintColor = isSelected ? icons : icon_unselected_color
        }
    }
    override func setUpViews() {
        addSubview(menuIcon)
        
        addConstraintWithFormat(format: "H:[v0(28)]", views: menuIcon)
        addConstraintWithFormat(format: "V:[v0(28)]", views: menuIcon)
        
        //center horizontal
        addConstraint(NSLayoutConstraint(item: menuIcon
            , attribute: .centerX
            , relatedBy: NSLayoutRelation.equal
            , toItem: self
            , attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0))
        
        //center Vertical
        addConstraint(NSLayoutConstraint(item: menuIcon
            , attribute: NSLayoutAttribute.centerY
            , relatedBy: NSLayoutRelation.equal
            , toItem: self
            , attribute: NSLayoutAttribute.centerY
            , multiplier: 1
            , constant: 0))
        
        
    }
}
