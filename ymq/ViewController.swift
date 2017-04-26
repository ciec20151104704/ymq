//
//  ViewController.swift
//  ymq
//
//  Created by s20151104704 on 17/3/27.
//  Copyright © 2017年 s20151104704. All rights reserved.
//

import UIKit
var z = 0
var x = 0
var i = 0
var t = 0
var r = 0
var a : Int = 0
var b : Int = 0
class ViewController: UIViewController {
    @IBOutlet weak var score2: UITextField!


    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var score1: UITextField!
    @IBOutlet weak var b: UITextField!
    
    @IBOutlet weak var jieguo: UITextField!
    @IBOutlet weak var jushu: UITextField!
    @IBAction func restart(_ sender: UIButton) {
        z = 0
        x = 0
        a.text = "\(0)"
        b.text = "\(0)"
        i = i+1
        jushu.text = "第\(i)局"
        
        jieguo.text = ""
        if(i>=4){
            jushu.text="结束"
        }
    }
    @IBAction func jiaa(_ sender: UIButton) {
        x = x + 1
        
        a.text = "\(x)"
        if x >= 21
        {
            jieguo.text = "此局A选手胜"
            t = t + 1
            score1.text = "\(t)"
        }
        if t == 2{
            jieguo.text = "A选手胜出"
            z = 0
            x = 0
            a.text = "\(0)"
            b.text = "\(0)"
            i = 0
            t = 0
            r = 0
        }
        
    }

    
  


    
    @IBOutlet weak var player2: UIImageView!
    
    @IBAction func jiab(_ sender: UIButton) {
        z = z + 1
        b.text = "\(z)"
        if z >= 21
        {
            jieguo.text = "此局B选手胜"
            r = r + 1
            score2.text="\(r)"
        }
        if r == 2{
           jieguo.text = "B选手胜出"
            z = 0
            x = 0
            a.text = "\(0)"
            b.text = "\(0)"
            i = 0
            t = 0
            r = 0
        }
           }

   let imageView = UIImageView(image:UIImage(named:"timg-1.jpeg"))

    
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
               // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
      

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

