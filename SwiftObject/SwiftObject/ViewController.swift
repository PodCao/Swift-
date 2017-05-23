//
//  ViewController.swift
//  SwiftObject
//
//  Created by cao yu on 2017/5/20.
//  Copyright © 2017年 cao yu. All rights reserved.
//

import UIKit

struct Person {
    var name = "yu"
    var age = 19
    
    
}
struct StudentInfo {
    var name = ""
    var age = 12.0
    func showStudentInfo() -> Void {
        print("姓名：\(name)---年龄:\(age)")
    }
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let stu = Student()
        stu.name = "cao"
        stu.number = 12
        stu.demo()
        //  在Swift中类是引用类型，与值类型不同，引用类型在被赋予一个变量，常量或者被传递到一个函数时，其值不会被拷贝。因此引用的是已存在的实例本身而不是其拷贝
        let per = Person()
        print(per.age)
        let per1 = Person(name:"xiaoyu",age:80)
        print(per1.name)
       // let per2 = Person(age:90,name:"uouo")
        // 为结构体属性赋值时，所赋值的顺序必须要和结构体中的成员顺序一致
/**************************值类型与引用类型********************************/
        //  在Swift中结构体是属于值类型，数组，字典也是值类型，只有类是引用类型，其余的一切都是值类型
        var stu1 = StudentInfo(name:"zhangop",age:18)
        var stu2 = stu1
        stu1.name = "jjjjjjjjjjjj"
        stu1.showStudentInfo()
        stu2.showStudentInfo()
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

