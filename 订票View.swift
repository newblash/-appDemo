//
//  订票View.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/25.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class V订票View: UIView {
    
    var image = UIImageView()
    var label = UILabel()
    
    var size = UIScreen.main.bounds.size
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: 300, width: size.width, height: 40)
        
        image.frame = CGRect(x: 7.5, y: 7.5, width: 25, height: 25)
        image.image = UIImage(named: "title")
        self.addSubview(image)
        
        label.frame = CGRect(x: 40, y: 10, width: 80, height: 20)
        label.text = "乐队名称"
        label.textColor = UIColor.green
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .left
        self.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
