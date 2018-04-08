//
//  TubeStop.swift
//  TubeLineStops
//
//  Created by Pablo on 30/03/2018.
//  Copyright © 2018 Pablo. All rights reserved.
//

import UIKit

class TubeLineStop: UIView {
    
    enum StopType {
        case tailLeft
        case tailRight
        case tailForkedLefStoptDown
        case middle
        case forkLeftStopUp
        case forkLeftStopDown
        case forkedStopUp
        case forkedStopDown
        case forkedStopEndDown
        case unionRightStopUp
        case unionRightStopDown
    }
    
    var lineColor = UIColor.blue
    
    var positionInTheLine = StopType.tailLeft {
        didSet{
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        let color = lineColor.cgColor
        let lineWidth = CGFloat(4.0)
        let circleDiameter = 4*lineWidth
        
        let width = self.frame.width
        let height = self.frame.height
        
        let yLinePosition = height/2
        var yStopPosition = yLinePosition-circleDiameter/2
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.setLineWidth(CGFloat(lineWidth))
        context?.setStrokeColor(color)
        context?.setFillColor(self.lineColor.cgColor)
        
        switch positionInTheLine {
        case .tailLeft:
            context?.move(to: CGPoint(x: width/2, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width, y: yLinePosition))
        case .tailRight:
            context?.move(to: CGPoint(x: 0, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width/2, y: yLinePosition))
        case .tailForkedLefStoptDown, .forkedStopEndDown:
            var xMoveTo = width/2
            var xAddLine = width
            if positionInTheLine == .forkedStopEndDown {
                xMoveTo = 0
                xAddLine = width/2
            }
            context?.move(to: CGPoint(x: 0, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width, y: yLinePosition))
            context?.move(to: CGPoint(x: xMoveTo, y: height-circleDiameter/2))
            context?.addLine(to: CGPoint(x: xAddLine, y: height-circleDiameter/2))
            yStopPosition = height-circleDiameter
        case .middle:
            context?.move(to: CGPoint(x: 0, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width, y: yLinePosition))
        case .forkLeftStopUp, .forkLeftStopDown:
            context?.move(to: CGPoint(x: 0, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width, y: yLinePosition))
            context?.move(to: CGPoint(x: width/8, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width/4, y: height-circleDiameter/2))
            context?.addLine(to: CGPoint(x: width, y: height-circleDiameter/2))
            if positionInTheLine == .forkLeftStopDown {
                yStopPosition = height-circleDiameter
            }
        case .forkedStopUp, .forkedStopDown:
            context?.move(to: CGPoint(x: 0, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width, y: yLinePosition))
            context?.move(to: CGPoint(x: 0, y: height-circleDiameter/2))
            context?.addLine(to: CGPoint(x: width, y: height-circleDiameter/2))
            if positionInTheLine == .forkedStopDown {
                yStopPosition = height-circleDiameter
            }
        
        case .unionRightStopUp, .unionRightStopDown:
            context?.move(to: CGPoint(x: 0, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width, y: yLinePosition))
            context?.move(to: CGPoint(x: width-width/8, y: yLinePosition))
            context?.addLine(to: CGPoint(x: width-width/4, y: height-circleDiameter/2))
            context?.addLine(to: CGPoint(x: 0, y: height-circleDiameter/2))
            if positionInTheLine == .unionRightStopDown {
                yStopPosition = height-circleDiameter
            }
        
        }
        context?.strokePath()
        context?.addEllipse(in: CGRect(x: width/2, y: yStopPosition, width: circleDiameter, height: circleDiameter))
        context?.fillPath()
        context?.strokePath()
    }
}
