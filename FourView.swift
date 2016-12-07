//
//  FourView.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/12/2.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class FourView: UIView {
    
    var nameLabel = UILabel()
    var button = UIButton()
    var image1 = UIImageView()
    var image_1 = UIImageView()
    var image_2 = UIImageView()
    var image_3 = UIImageView()
    var image_4 = UIImageView()
    var size = UIScreen.main.bounds.size
    var labelView: UIView!
    
    //给model赋值,当model的值发生变化时赋值给model里边的变量
    //    var model: Model{
    //        set{
    //            nameLabel.text = newValue.name
    //            ageLabel.text = String(stringInterpolationSegment: newValue.age)
    //        }
    //        get{
    //            return self.model
    //        }
    //    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        //标题图片
        image1.frame = CGRect(x: 10, y: 5, width: 20, height: 20)
        self.addSubview(image1)
        //标题
        nameLabel.frame = CGRect(x: image1.frame.maxX+5, y: 5, width: 80, height: 20)
        //        nameLabel.text = "热门直播"
        nameLabel.textColor = UIColor.red
        nameLabel.textAlignment = .left
        nameLabel.font = UIFont.boldSystemFont(ofSize: 13)
        self.addSubview(nameLabel)
        //直播按钮
        button = UIButton(type: .custom)
        button.frame = CGRect(x: size.width - 120, y: 5, width: 100, height: 20)
//        button.setTitle("1999场直播...", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentHorizontalAlignment = .right
        self.addSubview(button)
        
        
        //直播海报
        image_1.frame = CGRect(x: 18, y: image1.frame.maxY + 5, width: 180, height: 100)
        image_1.image = UIImage(named: "大师列表1")
        
        labelView = UIView(frame: CGRect(x: image_1.frame.minX - 18, y: image_1.frame.height - 15, width: image_1.frame.width, height: 15))
        labelView.backgroundColor = UIColor.gray
        labelView.alpha = 0.8
        
        image_1.addSubview(labelView)
        self.addSubview(image_1)
        
        image_2.frame = CGRect(x: image_1.frame.maxX + 18, y: image1.frame.maxY + 5, width: 180, height: 100)
        image_2.image = UIImage(named: "大师列表2")
        self.addSubview(image_2)
        
        image_3.frame = CGRect(x: 18, y: image_1.frame.maxY + 38, width: 180, height: 100)
        image_3.image = UIImage(named: "大师列表3")
        self.addSubview(image_3)
        
        image_4.frame = CGRect(x: image_1.frame.maxX + 18, y: image_1.frame.maxY + 38, width: 180, height: 100)
        image_4.image = UIImage(named: "大师列表4")
        self.addSubview(image_4)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



}
