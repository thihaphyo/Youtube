//
//  BaseCell.swift
//  Youtube
//
//  Created by Phyo Thiha on 6/5/18.
//  Copyright © 2018 Phyo Thiha. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    func setUpViews() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
