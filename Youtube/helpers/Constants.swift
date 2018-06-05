//
//  Constants.swift
//  Youtube
//
//  Created by Phyo Thiha on 6/5/18.
//  Copyright © 2018 Phyo Thiha. All rights reserved.
//

import UIKit

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

let primary = hexStringToUIColor(hex: "#F44336")
let primary_dark = hexStringToUIColor(hex: "#D32F2F")
let primary_light = hexStringToUIColor(hex: "#FFCDD2")
let accent = hexStringToUIColor(hex: "#FF5722")
let primary_text = hexStringToUIColor(hex:"#212121")
let secondary_text = hexStringToUIColor(hex:"#757575")
let icons = hexStringToUIColor(hex: "#FFFFFF")
let divider_color = hexStringToUIColor(hex: "#BDBDBD")
let white_text = hexStringToUIColor(hex: "#FFFFFF")
let icon_unselected_color = hexStringToUIColor(hex: "#C62828")
