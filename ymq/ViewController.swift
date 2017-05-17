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
var q = 0
var w = 0


class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
    
    @IBOutlet weak var score2: UITextField!


    
    @IBAction func finish(_ sender: UIButton) {
       z = 0
         x = 0
         i = 0
         t = 0
        ascore.text = ""
        bscore.text = ""
         dlg = 0
         flagA = 0
         flagB = 0
        score1.text = ""
        score2.text = ""
        firemsg.text = ""
        result.text = ""
        gamenum.text = ""
        q = 0
        w = 0
        
    }
    @IBOutlet weak var score1: UITextField!
   
    
    @IBOutlet weak var bscore: UITextField!
    
    @IBOutlet weak var ascore: UITextField!
    @IBOutlet weak var gamenum: UITextField!
    @IBOutlet weak var result: UITextField!
        @IBAction func restart(_ sender: UIButton) {
        z = 0
        x = 0
        ascore.text = "\(0)"
        bscore.text = "\(0)"
        i = i+1
        gamenum.text = "第\(i)局"
        firemsg.text = ""
        result.text = ""
        if(i>=4){
            gamenum.text="结束"
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

    @IBAction func addA(_ sender: UIButton) {
        q = x
        x = x + 1
        
        ascore.text = "\(x)"
        firemsg.text = "A选手发球"
        
         if x % 2 == 0 {
         fire4.text = ""
         fire3.text = ""
         fire1.text = "F"
         fire2.text = ""
         }else{
         fire3.text = ""
         fire1.text = ""
         fire2.text = "F"
         fire4.text = ""
         }
       
        
        if x >= 21
        {
            if z == 20,x - z == 2{
                result.text = "此局A选手胜"
                t = t + 1
                score1.text = "\(t)"
            }else if z <= 19{
                result.text = "此局A选手胜"
                t = t + 1
                score1.text = "\(t)"
            }
            if z == 29, x == 30{
                result.text = "此局A选手胜"
                t = t + 1
                score1.text = "\(t)"
            }
        }
        if t == 2{
            result.text = "A选手胜出"
            z = 0
            x = 0
            ascore.text = "\(0)"
            bscore.text = "\(0)"
            i = 0
            t = 0
            r = 0
        }

    }
    
    @IBOutlet weak var firemsg: UITextField!
    
    @IBOutlet weak var fire1: UITextField!
   
    @IBOutlet weak var fire2: UITextField!
    
    @IBOutlet weak var fire3: UITextField!
    
    @IBOutlet weak var fire4: UITextField!
    @IBAction func addB(_ sender: UIButton) {
        w = z
        z = z + 1
        bscore.text = "\(z)"
        firemsg.text = "B选手发球"
         if z % 2 == 0 {
         fire4.text = "F"
         fire3.text = ""
         fire1.text = ""
         fire2.text = ""
         }else{
         fire3.text = "F"
         fire1.text = ""
         fire2.text = ""
         fire4.text = ""
         }

        
        if z >= 21
            
        {
            if x == 20,z - x == 2{
                result.text = "此局B选手胜"
                r = r + 1
                score1.text = "\(r)"
            }else if x <= 19{
                result.text = "此局B选手胜"
                r = r + 1
                score1.text = "\(r)"
            }
            if x == 29, z == 30{
                result.text = "此局B选手胜"
                r = r + 1
                score1.text = "\(r)"
            }
        }
        if r == 2{
            result.text = "B选手胜出"
            z = 0
            x = 0
            ascore.text = "\(0)"
            bscore.text = "\(0)"
            i = 0
            t = 0
            r = 0
        }

    }
    
    @IBAction func backA(_ sender: UIButton) {
        if x > q {
            ascore.text = "\(q)"
            x = q
            
        }
    }
    @IBAction func backB(_ sender: UIButton) {
        if z > w{
            bscore.text = "\(w)"
            z = w
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

