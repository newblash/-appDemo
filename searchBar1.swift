//
//  searchBar1.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/19.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit


//直播条
class searchBar1: UIView, UIScrollViewDelegate {

    var size = UIScreen.main.bounds.size
    
    var myImage = UIImageView()
    var button = UIButton()
    
    var Soc = UIScrollView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: 80, width: size.width, height: 40)
        self.backgroundColor = UIColor.white
        
        Soc = UIScrollView(frame: CGRect(x: 5, y: 0, width: size.width - 60, height: 40))
//        Soc.layer.cornerRadius = 5//设置圆角
        Soc.showsHorizontalScrollIndicator = false//设置水平滚动线隐藏
        Soc.contentSize = CGSize(width: 600, height: 40)
        Soc.delegate = self
        self.addSubview(Soc)
        
        myImage = UIImageView(frame: CGRect(x: 5, y: 5, width: 30, height: 30))
//        self.addSubview(myImage)
        Soc.addSubview(myImage)
        
        button = UIButton(type: .custom)
        button.setTitle("萝莉直播", for: UIControlState.normal)
        button.setTitleColor(UIColor.red, for: .normal)
//        button.backgroundColor = UIColor.blue
        button.frame = CGRect(x: myImage.frame.maxX + 5, y: 5, width: 80, height: 30)
        button.titleLabel?.font = UIFont(name: "", size: 30)
        Soc.addSubview(button)
//        self.addSubview(label)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
        func addImage(image: UIImage) {
            myImage.image = image
    
        }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
