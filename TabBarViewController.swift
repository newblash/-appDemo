//
//  TabBarViewController.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/18.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.alpha = 0.8
        self.tabBar.barTintColor = UIColor.black
        ///把tabbar的子视图加进控制器
        let V首页 = V首页ViewController()
        V首页.title = "首页"
        let V大师 = V大师ViewController()
        V大师.title = "大师"
        let V尖货 = V尖货ViewController()
        V尖货.title = "尖货"
        let V我的 = V我的ViewController()
        V我的.title = "我的"
        
        let C首页 = UINavigationController(rootViewController: V首页)
            C首页.tabBarItem = UITabBarItem(title: "首页", image: UIImage.init(named: "tabBar_Item1")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), selectedImage: nil)
        let C大师 = UINavigationController(rootViewController: V大师)
            C大师.tabBarItem = UITabBarItem(title: "大师", image: UIImage.init(named: "tabBar_Item2")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), selectedImage: nil)
        let C尖货 = UINavigationController(rootViewController: V尖货)
            C尖货.tabBarItem = UITabBarItem(title: "尖货", image: UIImage.init(named: "tabBar_Item3")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), selectedImage: nil)
        let C我的 = UINavigationController(rootViewController: V我的)
            C我的.tabBarItem = UITabBarItem(title: "我的", image: UIImage.init(named: "tabBar_Item4")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), selectedImage: nil)
        self.viewControllers = [C首页,C大师,C尖货,C我的]
//        self.selectedIndex = 0
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
