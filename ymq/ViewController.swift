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
var dlg = 0
var flagA = 0
var flagB = 0
class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
    
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
        faqiu.text = ""
        jieguo.text = ""
        if(i>=4){
            jushu.text="结束"
        }
    }
 
    @IBOutlet weak var Aimg: UIImageView!

    @IBOutlet weak var Bimg: UIImageView!

    @IBAction func Aput(_ sender: Any) {
        if dlg == 0{
        flagA = 1
        flagB = 0
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(picker,animated: true,completion: {
                ()->Void in
            })
        }else{
            print("读取相册错误")
            }
    }
    }
    
    @IBAction func Bput(_ sender: Any) {
        if dlg == 0{
            flagB = 1
            flagA = 0
            
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
            {
                let picker = UIImagePickerController()
                picker.delegate = self
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                self.present(picker,animated: true,completion: {
                    ()->Void in
                })
            }else{
                print("读取相册错误")
            }
        }

    }
    func imagePickerController(_ picker : UIImagePickerController,
                            didFinishPickingMediaWithInfo
        info:[String:Any]){
        print(info)
        let image : UIImage!
        image = info[UIImagePickerControllerOriginalImage]as!UIImage
        if(flagA == 1){
            Aimg.image = image
        }
        else if(flagB == 1){
            Bimg.image = image
        }
        
        picker.dismiss(animated:true,completion: {
            ()-> Void in
        })
    
    }

    @IBAction func jiaa(_ sender: UIButton) {
        x = x + 1
        
        a.text = "\(x)"
        faqiu.text = "A选手发球"
        if x % 2 == 0 {
            faqiu4.text = ""
            faqiu1.text = "F"
            faqiu2.text = ""
            faqiu3.text = ""
        }else{
            faqiu3.text = ""
            faqiu1.text = ""
            faqiu2.text = "F"
            faqiu4.text = ""
        }
       
            
        
        if x >= 21
        {
            if z == 20,x - z == 2{
               jieguo.text = "此局A选手胜"
                t = t + 1
                score1.text = "\(t)"
            }else if z <= 19{
                jieguo.text = "此局A选手胜"
                t = t + 1
                score1.text = "\(t)"
            }
            if z == 29, x == 30{
                jieguo.text = "此局A选手胜"
                t = t + 1
                score1.text = "\(t)"
            }
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

    @IBOutlet weak var faqiu4: UITextField!
    @IBOutlet weak var faqiu3: UITextField!
    
    @IBOutlet weak var faqiu2: UITextField!

    @IBOutlet weak var faqiu1: UITextField!
    @IBOutlet weak var player2: UIImageView!
    
    @IBOutlet weak var faqiu: UITextField!
    
    @IBAction func jiab(_ sender: UIButton) {
        z = z + 1
        b.text = "\(z)"
        if z % 2 == 0 {
            faqiu4.text = "F"
            faqiu1.text = ""
            faqiu2.text = ""
            faqiu3.text = ""
        }else{
            faqiu3.text = "F"
            faqiu1.text = ""
            faqiu2.text = ""
            faqiu4.text = ""
        }
        
        if z >= 21
    
        {
            if x == 20,z - x == 2{
                jieguo.text = "此局B选手胜"
                r = r + 1
                score1.text = "\(r)"
            }else if x <= 19{
                jieguo.text = "此局B选手胜"
                r = r + 1
                score1.text = "\(r)"
            }
            if x == 29, z == 30{
                jieguo.text = "此局B选手胜"
                r = r + 1
                score1.text = "\(r)"
            }
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


    
    
    override func viewDidLoad() {

        super.viewDidLoad()
               // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
      

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

