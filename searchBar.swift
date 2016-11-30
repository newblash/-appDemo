//
//  searchBar.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/19.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

//搜索条页面
class searchBar: UIView {

    
    var size = UIScreen.main.bounds.size
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: 0, width: size.width, height: 80)
        self.backgroundColor = UIColor.red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func addImage(image: UIImage) {
//        myImage.image = image
//        
//    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
