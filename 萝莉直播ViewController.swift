//
//  萝莉直播ViewController.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/23.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class C萝莉直播ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //显示导航栏
        self.navigationController?.isNavigationBarHidden = false

        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
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
