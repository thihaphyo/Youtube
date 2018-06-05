//
//  VideoCell.swift
//  Youtube
//
//  Created by Phyo Thiha on 6/5/18.
//  Copyright © 2018 Phyo Thiha. All rights reserved.
//

import UIKit

class VideoCell: BaseCell {
    
    
    
    let thumbnailImageView:UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "jb_placeholder")
        return imageView
        
    }()
    
    let separatorView:UIView = {
        let view = UIView()
        view.backgroundColor = divider_color
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profileImageView:UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "star_war")
        imgView.layer.cornerRadius = 24
        imgView.layer.borderColor = divider_color.cgColor
        imgView.layer.borderWidth = 1
        imgView.layer.masksToBounds = true
        return imgView
    }()
    
    let labeHead:UILabel = {
        let lab = UILabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.textColor = primary_text
        lab.text = "Justin Beiber - Believe Offical"
        return lab
    }()
    
    let subtitle:UITextView = {
        let lab = UITextView()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.text = "JustinBeiberVEVO • 1,604,684,607 views • 2 years ago"
        lab.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        lab.textColor = secondary_text
        return lab
    }()
    
    override func setUpViews() {
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        addSubview(profileImageView)
        addSubview(labeHead)
        addSubview(subtitle)
        
        addConstraintWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        addConstraintWithFormat(format: "H:|-16-[v0(48)]", views: profileImageView)
        
        //Vertical Constraints
        addConstraintWithFormat(format: "V:|-16-[v0]-8-[v1(48)]-16-[v2(1)]|", views: thumbnailImageView,profileImageView,separatorView)
        
        //Horizontal Constraints
        addConstraintWithFormat(format: "H:|[v0]|", views: separatorView)
        
        
        //top constraint
        addConstraint(NSLayoutConstraint(item: labeHead
            , attribute: .top
            , relatedBy: .equal
            , toItem: thumbnailImageView
            , attribute: .bottom
            , multiplier: 1
            , constant: 8))
        //left constraint
        addConstraint(NSLayoutConstraint(item: labeHead
            , attribute: .left
            , relatedBy: .equal
            , toItem: profileImageView
            , attribute: .right
            , multiplier: 1
            , constant: 8))
        //right constraint
        addConstraint(NSLayoutConstraint(item: labeHead
            , attribute: .right
            , relatedBy:.equal
            , toItem: thumbnailImageView
            , attribute: .right
            , multiplier: 1
            , constant: 0))
        //height constraint
        addConstraint(NSLayoutConstraint(item: labeHead
            , attribute: .height
            , relatedBy: .equal
            , toItem: self
            , attribute: .height
            , multiplier: 0
            , constant: 20))
        //top constraint
        addConstraint(NSLayoutConstraint(item: subtitle
            , attribute: .top
            , relatedBy: .equal
            , toItem: labeHead
            , attribute: .bottom
            , multiplier: 1
            , constant: 4))
        
        //left constraint
        addConstraint(NSLayoutConstraint(item: subtitle
            , attribute: .left
            , relatedBy: .equal
            , toItem: profileImageView
            , attribute: .right
            , multiplier: 1
            , constant: 8))
        
        //right constraint
        addConstraint(NSLayoutConstraint(item: subtitle
            , attribute: .right
            , relatedBy: .equal
            , toItem: thumbnailImageView
            , attribute: .right
            , multiplier: 1
            , constant: 0))
        
        //height constraint
        addConstraint(NSLayoutConstraint(item: subtitle
            , attribute: .height
            , relatedBy: .equal
            , toItem: self
            , attribute: .height
            , multiplier: 0, constant: 30))
    }
    
  
    
}
