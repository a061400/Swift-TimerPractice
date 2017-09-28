//
//  ViewController.swift
//  TimerPractice
//
//  Created by 謝尚霖 on 2017/9/23.
//  Copyright © 2017年 謝尚霖. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var i = 0
    @IBOutlet weak var tableView: UITableView!
    var j = 0
    var k = 0
    var v = 0
    var bn = false
     var a1 = "0"
    var a2 = "0"
    var a3 = "0"
    var a4 = "0"
    var a10 = "0"
    var items:Array = ["以下可記錄時間"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    
    
//    //設定編輯模式
//    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        //return .none => 使用在 move mode
//        //return .delete
//        
//        return .none
//    }
//    
//    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        //print("do delete")
        
//        
//        if editingStyle == .delete{
//            items.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//        }else if editingStyle == .insert {
//            print("insert")
        
//            let i = IndexPath(item:items.count-1, section: 0)
//            tableView.scrollToRow(at: i, at: .top, animated: true)
        
//    }

    @IBOutlet weak var t1: UILabel!
    
    
    @IBOutlet weak var t2: UILabel!
    
    
    @IBOutlet weak var t3: UILabel!
    
    
    @IBOutlet weak var t4: UILabel!
    

    @IBAction func btn1(_ sender: Any) {
         bn = !bn
        
        if bn == true {
           

        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            (timer) in self.task3(timer: timer)
        }
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
            (timer) in self.task4(timer: timer)
        }
        Timer.scheduledTimer(withTimeInterval: 3600, repeats: true) {
            (timer) in self.task1(timer: timer)
        }

        Timer.scheduledTimer(withTimeInterval: 60, repeats: true) {
            (timer) in self.task2(timer: timer)
        
        }
        } else if bn == false {
            
            
           
        }
    }
    
    
    
    
    @IBAction func rest(_ sender: Any) {
        
        a1 = t1.text!
        a2 = t2.text!
        a3 = t3.text!
        a4 = t4.text!
        
        a10 = "\(a1):\(a2):\(a3):\(a4)"
        items += [a10]
        tableView.reloadData()

        print("\(a10)")
        
    }
    
   
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            
            
           }
//    override func viewDidAppear(_ animated: Bool) {
//        tableView.isEditing = true
//    }
    
       func task1(timer: Timer){
        
        if bn == false {
            timer.invalidate()
        } else if bn == true {
            k += 1
            //print("t1:\(i)")
            t1.text = "\(k)"
        }
        
    }

    func task2(timer: Timer){
        
            if bn == false {
                timer.invalidate()
            }else if bn == true {
                v += 1
                //print("t2:\(i)")
                t2.text = "\(v)"
                if v > 59 {
                    v = 0
        }
        }
    }

    func task3(timer: Timer){
        
            if bn == false {
                timer.invalidate()
            }else if bn == true {
                i += 1
                //print("t3:\(i)")
                t3.text = "\(i)"
                if i > 58 {
                    i = -1
        }
        }
    }
    func task4(timer: Timer){
        
        
            if bn == false {
                timer.invalidate()
            }else if bn == true {
                if j > 9 {
                    j = 0
                }
                j += 1
                //print("t4:\(j)")
                t4.text = "\(j)"
            }
        
    }
    

   
    
    

   

}

