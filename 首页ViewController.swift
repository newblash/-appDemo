//
//  首页ViewController.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/18.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class V首页ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //轮播
    var image = heardImage()
    //搜索栏
    var first = searchBar()
    //直播类型栏
    var thard = searchBar1()
    //直播海报栏
    var tableV = UITableView()
    //订票栏
    var dp = V订票View()
    
    var name = ["A"]
    var age = ["1"]
    
    
    
    var size = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        //搜索栏
        view.addSubview(first)
        
        //第二栏subnav1
        thard.addImage(image: UIImage(named: "subnav1")!)
        thard.button.addTarget(self, action: #selector(button), for: UIControlEvents.touchUpInside)
        view.addSubview(thard)
        
        //轮播
        view.addSubview(image)
        
        //订票
        view.addSubview(dp)
        
        //海报
        tableV = UITableView(frame: CGRect(x: 0, y: image.frame.maxY + 40, width: size.width, height: size.height - image.frame.maxY), style: .grouped)
        tableV.delegate = self
        tableV.dataSource = self
        
        view.addSubview(tableV)
        
        // Do any additional setup after loading the view.
    }
    //设置tableview有几个分区
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    //设置底部高度
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if (section == 1) {
            return 80
        }else{
            return 1
        }
    }
    //设置头部高度
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    //行高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.section == 0) {
            return 300
        }else{
            return 300
        }
        
    }
    //返回tableview有多少行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    //cell的创建和数据
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "tableview"
        var cell: V热门Cell!
        cell = tableV.dequeueReusableCell(withIdentifier: indentifier) as? V热门Cell
        
        if cell == nil {
            cell = V热门Cell(style: .default, reuseIdentifier: indentifier)
            cell.button.addTarget(self, action: #selector(CellButton), for: .touchUpInside)
        }
        if (indexPath.section == 0) {
            cell.nameLabel.text = "热门直播"
        }else{
            cell.nameLabel.text = "推荐直播"
        }

        return cell
    }
    
    func CellButton() {
        print("1")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //即将载入页面是隐藏导航栏
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func button() {
        //点击button之后
        //首先设置tabbar的状态为隐藏
        self.hidesBottomBarWhenPushed = true
        
        //跳转到萝莉直播页面
        let VC = C萝莉直播ViewController()
        //设置标题
        VC.title = "萝莉直播"
        navigationController?.pushViewController(VC, animated: true)
        //返回时让tabbar的状态为显示
        self.hidesBottomBarWhenPushed = false
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
