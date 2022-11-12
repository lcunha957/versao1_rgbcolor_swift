//
//  Cores.swift
//  atv_rgb_btn_21106
//
//  Created by LUNARA MORENA CUNHA on 11/11/22.
//

import UIKit

class Cores{
    private var red:CGFloat
    private var green:CGFloat
    private var blue:CGFloat
    
    init(red:Float, green:Float, blue:Float) {
        self.red = CGFloat(red)
        self.green = CGFloat(green)
        self.blue = CGFloat(blue)
    }
    
    
    func setRed(red:Float){
        self.red = CGFloat(red)
    }
    
    func setGreen(green:Float){
        self.green = CGFloat(green)
    }
    
    func setBlue(blue:Float){
        self.blue = CGFloat(blue)
    }
    
    
    func getColor() -> UIColor {
        let color = UIColor(
            red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        return color
    }
    
    func getString() -> String {
    let string = "Vermelho:\(Int(round(red)))\nVerde: \(Int(round(green)))\nAzul: \(Int(round(blue)))"
        return string
    }
}


