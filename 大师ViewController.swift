//
//  大师ViewController.swift
//  直播appDemo
//
//  Created by 杨晶 on 16/11/18.
//  Copyright © 2016年 YJ. All rights reserved.
//

import UIKit

class V大师ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let size = UIScreen.main.bounds.size
    
    //直播海报栏
    var tableV = UITableView()
    
    let one = OneView()
    let two = TwoView()
    let three = ThreeView()
    let four = FourView()
    let four1 = FourView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(one)
        view.addSubview(two)
    

        //海报
        tableV = UITableView(frame: CGRect(x: 0, y: two.frame.maxY, width: size.width, height: size.height - two.frame.maxY), style: .grouped)
        tableV.delegate = self
        tableV.dataSource = self
//        self.tableV.register(UITableViewCell.self, forCellReuseIdentifier: "SwiftCell")
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
            return three.frame.size.height
        }else{
            return 300
        }
        
    }
    //返回tableview有多少行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
            return 2
        }
    }
    //cell的创建和数据
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "SwiftCell"
        if indexPath.section == 0 {
            let cell = UITableViewCell.init(style: .default, reuseIdentifier: indentifier)
            cell.accessoryType = .none
            cell.selectionStyle = .none
            cell.contentView.addSubview(three)
            return cell
        }else{
            let cell1 = UITableViewCell.init(style: .default, reuseIdentifier: "SwiftCell")
            cell1.selectionStyle = .none
            
            if indexPath.row == 0 {
                four1.nameLabel.text = "赶紧开车"
                four1.image1.image = UIImage(named: "大师直播")
                four1.button.setTitle("102场直播已开始", for: .normal)
                cell1.contentView.addSubview(four1)
            }else{
                four.nameLabel.text = "立马上车"
                four.image1.image = UIImage(named: "大师准备直播")
                four.button.setTitle("1984直播", for: .normal)
                cell1.contentView.addSubview(four)
            }
            return cell1
        }
    }
    


    
    
    override func viewWillAppear(_ animated: Bool) {
        //即将载入页面是隐藏导航栏
        self.navigationController?.isNavigationBarHidden = true
    }
        

        
        // Do any additional setup after loading the view.
    
    

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
