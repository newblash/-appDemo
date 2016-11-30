//
//  heardImage.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/18.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

//首页轮播图片
class heardImage: UIView, UIScrollViewDelegate {
    
    var size = UIScreen.main.bounds.size
    var myImage: UIImageView!
    var Soc = UIScrollView()
    let pagesNum = 3
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 120, width: size.width, height: 180)
        
        Soc = UIScrollView(frame: CGRect(x: 0, y: 0, width: size.width, height: 180))
        //        Soc.layer.cornerRadius = 5//设置圆角
        Soc.showsHorizontalScrollIndicator = false//设置水平滚动线隐藏
        Soc.showsVerticalScrollIndicator = false//垂直滚动线隐藏
        Soc.backgroundColor = UIColor.red
        Soc.isPagingEnabled = true//分页开关
        Soc.contentSize = CGSize(width: size.width*3, height: 180)
        Soc.delegate = self
        self.addSubview(Soc)
        
        
        //创建图片,然后加载到soc
        for i in 0..<pagesNum {
            myImage = UIImageView(image: UIImage(named: "dh-\(i)"))
            myImage.contentMode = .scaleToFill
            myImage.frame = CGRect(x: size.width * CGFloat(i), y: 0, width: size.width, height: 180)
            self.Soc.addSubview(myImage)
        }
//        myImage = UIImageView(frame: CGRect(x: 0, y: 0, width: size.width, height: 230))
//        Soc.addSubview(myImage!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func addImage(images: UIImage) {
//        myImage.image = images
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
