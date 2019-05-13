//
//  ViewController.swift
//  BaseSwiftControl
//
//  Created by 中国孔 on 2019/5/10.
//  Copyright © 2019 孔令辉. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = UIColor.white
        
        
        SetnavigationBar()
        ColorView()
        TitleButton()
        label()
        imageView()
        
        forInView()
        Switchway(types: "中等")
        ArrayConfig()
        Dictionary()
        
        JudgeNormal()
        JudgeKind()
        privateWay(title: "你好", num: 6)
       
        nextControl()
        
    }

    @objc func clicks(btn:UIButton)->() {
        print(#function)
        print(btn)
    }
    
    
    // 导航栏设置
    func SetnavigationBar() -> () {
        
        
        self.navigationController?.navigationBar.backgroundColor = UIColor.orange
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.navigationItem.title = "首页"
        self.navigationController?.navigationBar.barTintColor = UIColor.cyan
        let dic = [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 17.0),NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = dic
        
        let rightButton = UIBarButtonItem(title: "跳转", style: .plain, target: self, action: #selector(jump))
        self.navigationItem.rightBarButtonItem = rightButton
        
        
    }
    
    
    
    @objc func jump() {
        print("点击了导航栏右侧的跳转按钮...")
    }
    
    // UIView
    func ColorView() -> () {
        // 新建一个View
        let colorView = UIView(frame: CGRect(x:10,y:50,width:400,height:30));
        colorView.backgroundColor = UIColor.init(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0);
        view.addSubview(colorView);
        
    }
    
    // UIButton
    func TitleButton() -> () {
        let button = UIButton(frame: CGRect(x: 10, y: 100, width: 400, height: 30));
        button.setTitle("标题", for: UIControl.State.normal);
        button.backgroundColor = UIColor.lightGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13.0)
        button.setTitleColor(UIColor.lightGray, for: UIControl.State.normal)
        button.setImage(UIImage(named: "icon"), for: UIControl.State.normal);
        button.setImage(UIImage(named: "icon"), for: UIControl.State.highlighted);
        view.addSubview(button);
        button.addTarget(self, action: #selector(clicks), for: .touchUpInside)
        
    }
    
    
    // UIlabel
    func label() -> () {
        
        let label = UILabel(frame: CGRect(x: 50, y: 200, width: 200, height: 25))
        label.textColor = UIColor.lightGray
        label.text = "System Will Printful A label";
        label.font = UIFont.systemFont(ofSize: 13.0)
        view.addSubview(label)
        
    }
    
    // UIimageView
    func imageView() -> () {
        
//        let img = UIImageView(image: UIImage(named: ""))
        
        let imgView = UIImageView.init()
        imgView.image = UIImage(named: "")
        view.addSubview(imgView)
        
    }
    
    
    // 自定义方法 传值
    func privateWay(title:String,num:Double) -> () {
        
        print(title,num)
        
    }
    
    
    // Switch 语法
    func Switchway(types:String) {
        
        switch types {
        case "优秀":
            print("是的优秀")
        case "中等":
            print("中等"+"100")
        case"差":
            print("太差了")
        default:
            break
        }
        
    }
    
    
    //for 循环语句
    func forInView()->() {
        
        // reversed 可以从后往前遍历
        for i in(0..<5).reversed(){
            print(i)
        }
        
        for i in 0..<10 {
            print(i)
        }
        print("------")
        // 这里的第三个. 跟上面的<功能相同
        for i in 0...5 {
            print(i)
        }
   
    }
   
    
    
    // 自定义数组
    func ArrayConfig() -> () {
        
        // Swift 中 数组没有可变与不可变的区分
        var array1 = ["张三","李四","王五"]
        let array2 = ["1","2","3"]
        
        let arr = array1 + array2
        print(arr)
        
        // 添加元素
        array1.append("增加")
        print(array1)
        
        //修改元素 通过下标修改
        array1[0] = "修改"
        print(array1)
        
    }
    
    // 自定义字典
    func  Dictionary() -> () {
        
        var dict = ["name":"张三","age":"20"] as [String :Any]
        var dict2 = ["class":"三班","title":"主题班会"]
        
        for e in dict2{
            
            dict[e.key] = dict2[e.key]
        }
        print(dict)
    
        
        // 字典遍历
        var dict3 = ["title":"标题","subtitle":"副标题","content":"内容"]
        
        for e in dict3
        {
//            print("\(e.key)\(e.value)")
        }
        
        for (k,v) in dict3
        {
            print("\(k) \(v)")
        }
        
        // 移除字典中的元素
        dict3.removeValue(forKey: "title")
        print(dict3)
     
        // 定义字典格式的数组
        let array = [
            ["name":"张三","age":"20"],
            ["name":"李四","age":"21"]
        ]
        print(array)
        
        
    }
    
    
    
    
    
  
    // 基本数据类型计算
    func JudgeNormal() -> () {
        
        let x = 10
        let y = 100
        print(x+y)
        
    }
    
    
    // let 定义一个常量 无法修改
    // var 定义一个变量 可以修改
    func JudgeKind() -> () {
        
        var x = 20;
        x = 100;
        
        print(x)

    }
    
    
    // 控制器跳转
    func nextControl() -> () {
        
        let button = UIButton.init(frame: CGRect(x: 10, y: 300, width: 400, height: 30))
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.backgroundColor = UIColor.lightGray
        button.setTitle("跳转到TableView页面", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13.0)
        button.addTarget(self, action: #selector(buttonClicks), for: .touchUpInside)
        view.addSubview(button)

        
        let button2 = UIButton.init(frame: CGRect(x: 10, y: 350, width: 400, height: 30))
        button2.setTitle("跳转到CollectionView页面", for: UIControl.State.normal)
        button2.backgroundColor = UIColor.lightGray
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 13.0)
        button2.addTarget(self, action: #selector(buttonClicks), for: .touchUpInside)
        view.addSubview(button2)
        
        
        
        
        
        
        
        
    }
    
    
    @objc func buttonClicks(btn:UIButton) -> () {
        
        if btn.currentTitle == "跳转到TableView页面" {
            print("到tableView页面")
            
            let tableView = TableViewController()
            self.navigationController?.pushViewController(tableView, animated: true)
            
        }else{
            print("到CollectionView页面")
            
            let collectionView = CollectionViewController()
            self.navigationController?.pushViewController(collectionView, animated: true)
            
        }
        
        
    }
    
    
    
    
    
    
    

}

