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
       
        ColorView()
        TitleButton()
        label()
        imageView()
        
        forInView()
        Switchway(types: "中等")
        ArrayConfig()
        
        JudgeNormal()
        JudgeKind()
        privateWay(title: "你好", num: 6)
       
    }

    @objc func clicks(btn:UIButton)->() {
        print(#function)
        print(btn)
    }
    
    
    // UIView
    func ColorView() -> () {
        // 新建一个View
        let colorView = UIView(frame: CGRect(x:40,y:100,width:50,height:50));
        colorView.backgroundColor = UIColor.init(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0);
        view.addSubview(colorView);
        
    }
    
    // UIButton
    func TitleButton() -> () {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 45, height: 45));
        button.setTitle("标题", for: UIControl.State.normal);
        button.backgroundColor = UIColor.black
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
    
    
    
    
    
    
    
    
    

}

