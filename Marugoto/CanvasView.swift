//
//  CanvasView.swift
//  Marugoto
//
//  Created by Spoon on 07/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    let shapelayer = CAShapeLayer()
    // ce que l'on va dessiner
    var path:UIBezierPath = UIBezierPath()
    
    // équivalent du ViewDidiLoad pour écran
    override func awakeFromNib() {
        // épaisseur de la ligne
        path.lineWidth = 2
        shapelayer.strokeColor = UIColor.black.cgColor
        shapelayer.lineWidth = 10
        shapelayer.fillColor = UIColor.clear.cgColor
    }
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
    }
    
    // aire du dessin
    override func draw(_ rect: CGRect) {
        self.layer.sublayers = nil
        shapelayer.path = path.cgPath
        self.layer.addSublayer(shapelayer)
    }
    
    // nouveau touché -> lieu du touché
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let startPoint = touch.location(in: self)
        path.move(to: startPoint)
    }
    
    // ajoute depuis le lieu touché
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let touchPoint = touch?.location(in: self) {
            path.addLine(to: touchPoint)
            // rafraichissement du display
            self.setNeedsDisplay()
        }
    }

    // clear de l'aire de dessin
    func clearCanvas(){
        path.removeAllPoints()
        setNeedsDisplay()
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
