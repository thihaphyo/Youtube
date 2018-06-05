//
//  Extensions.swift
//  Youtube
//
//  Created by Phyo Thiha on 6/5/18.
//  Copyright © 2018 Phyo Thiha. All rights reserved.
//

import UIKit

extension UIView{
    
    func addConstraintWithFormat(format:String,views:UIView...)  {
        var viewsDic = [String:UIView]()
        for (index,view) in views.enumerated(){
            
            let key = "v\(index)"
            viewsDic[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
            
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format
            , options: NSLayoutFormatOptions()
            , metrics:nil
            , views: viewsDic))
    }
}
