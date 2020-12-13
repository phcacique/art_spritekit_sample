//
//  Main.swift
//  ArtGen
//
//  Created by Pedro Cacique on 09/08/20.
//

import Foundation
import SpriteKit
import art

class MyCanvas: Canvas2D{
    
    override func setup() {
        for i in 0..<6{
            circle(x: Double(i*210), y: height/2, color: .red, radius: 100, innerRadius: 0.8)
        }
    }
    
    override func draw() {
       
    }
    
}
