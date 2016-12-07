//
//  OneView.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/12/2.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class OneView: UIView {

    var size = UIScreen.main.bounds.size
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: 0, width: size.width, height: 80)
        self.backgroundColor = UIColor.red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
