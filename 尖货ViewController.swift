//
//  尖货ViewController.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/18.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class V尖货ViewController: UIViewController {

    
    let a = FourView()
    let b = FourView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(a)
        
        a.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.addSubview(a)
        b.frame = CGRect(x: 0, y: 320, width: 300, height: 300)
        view.addSubview(b)
        

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
