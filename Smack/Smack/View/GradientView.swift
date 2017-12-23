//
//  GradientView.swift
//  Smack
//
//  Created by Jenna Hakki on 12/23/17.
//  Copyright © 2017 Jenna Hakki. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        //^^^we set up colors that will be included in this gradient
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //^^^we set up the start and end points
        
        gradientLayer.frame = self.bounds
        //^^^we set up the size of the gradient
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        //^^added the gradient layer to the UIViews layer
    }
    
}
