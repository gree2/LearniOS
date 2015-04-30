//
//  TabButton.swift
//  TabBarDemo
//
//  Created by hqlgree2 on 4/30/15.
//  Copyright (c) 2015 hqlgree2. All rights reserved.
//

import UIKit

class TabButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func imageRectForContentRect(contentRect: CGRect) -> CGRect
    {
        let imageW = contentRect.size.width
        let imageH = contentRect.size.height * 0.6
        return CGRectMake(0, 5, imageW, imageH)
    }
    
    override func titleRectForContentRect(contentRect: CGRect) -> CGRect {
        let titleY = contentRect.size.height * 0.6
        let titleW = contentRect.size.width
        let titleH = contentRect.size.height - titleY
        return CGRectMake(0, titleY, titleW, titleH)
    }

}
