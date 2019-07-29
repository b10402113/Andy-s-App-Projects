//
//  ViewController.swift
//  FoodCartProject
//
//  Created by 鄭和軒 on 2019/7/25.
//  Copyright © 2019年 鄭和軒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CakeMoney01: UILabel!
    @IBOutlet weak var CakeCount01: UILabel!
    @IBOutlet weak var CakeMoney02: UILabel!
    @IBOutlet weak var CakeCount02: UILabel!
    @IBOutlet weak var CakeMoney03: UILabel!
    @IBOutlet weak var CakeCount03: UILabel!
    @IBOutlet weak var CakeMoney04: UILabel!
    @IBOutlet weak var CakeCount04: UILabel!
    @IBOutlet weak var CakeMoney05: UILabel!
    @IBOutlet weak var CakeCount05: UILabel!
    @IBOutlet weak var CakeMoney06: UILabel!
    @IBOutlet weak var CakeCount06: UILabel!
    @IBOutlet weak var TotalDollars: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var moneys = [UILabel]()
        moneys = [CakeMoney01,CakeMoney02,CakeMoney03,CakeMoney04,CakeMoney05,CakeMoney06]
        var counts = [UILabel]()
        counts =    [CakeCount01,CakeCount02,CakeCount03,CakeCount04,CakeCount05,CakeCount06]
    }

    @IBAction func CakePlus01(_ sender: Any) {
        let money:Int = ( Int(CakeCount01.text!) ?? 0 ) + 1
        CakeCount01.text = "\(money)"
        calculateSum()
    }
    @IBAction func CakeSub01(_ sender: Any) {
        if let text = CakeCount01.text, let value = Int(text)
        {
            if(value <= 0){
                CakeCount01.text = "\(0)"
            }else{
                CakeCount01.text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    @IBAction func CakePlus02(_ sender: Any) {
        let money:Int = ( Int(CakeCount02.text!) ?? 0 ) + 1
        CakeCount02.text = "\(money)"
        calculateSum()
    }
    
    @IBAction func CakeSub02(_ sender: Any) {
        if let text = CakeCount02.text, let value = Int(text)
        {
            if(value <= 0){
                CakeCount02.text = "\(0)"
            }else{
                CakeCount02.text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    @IBAction func CakePlus03(_ sender: Any) {
        let money:Int = ( Int(CakeCount03.text!) ?? 0 ) + 1
        CakeCount03.text = "\(money)"
        calculateSum()
    }
    
    @IBAction func CakeSub03(_ sender: Any) {
        if let text = CakeCount03.text, let value = Int(text)
        {
            if(value <= 0){
                CakeCount03.text = "\(0)"
            }else{
                CakeCount03.text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    
    @IBAction func CakePlus04(_ sender: Any) {
        let money:Int = ( Int(CakeCount04.text!) ?? 0 ) + 1
        CakeCount04.text = "\(money)"
        calculateSum()
    }
    @IBAction func CakeSub04(_ sender: Any) {
        if let text = CakeCount04.text, let value = Int(text)
        {
            if(value <= 0){
                CakeCount04.text = "\(0)"
            }else{
                CakeCount04.text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    @IBAction func CakePlus05(_ sender: Any) {
        let money:Int = ( Int(CakeCount05.text!) ?? 0 ) + 1
        CakeCount05.text = "\(money)"
        calculateSum()
    }
    @IBAction func CakeSub05(_ sender: Any) {
        if let text = CakeCount05.text, let value = Int(text)
        {
            if(value <= 0){
                CakeCount05.text = "\(0)"
            }else{
                CakeCount05.text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    @IBAction func CakePlus06(_ sender: Any) {
        let money:Int = ( Int(CakeCount06.text!) ?? 0 ) + 1
        CakeCount06.text = "\(money)"
        calculateSum()
    }
    @IBAction func CakeSub06(_ sender: Any) {
        if let text = CakeCount06.text, let value = Int(text)
        {
            if(value <= 0){
                CakeCount06.text = "\(0)"
            }else{
                CakeCount06.text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    func calculateSum(){
        if var text = TotalDollars.text,var sum = Int(text){
            sum = 0
            var moneys = [UILabel]()
            moneys = [CakeMoney01,CakeMoney02,CakeMoney03,CakeMoney04,CakeMoney05,CakeMoney06]
            var counts = [UILabel]()
            counts = [CakeCount01,CakeCount02,CakeCount03,CakeCount04,CakeCount05,CakeCount06]
            for i in 0...5{
                if let count = counts[i].text,let countV = Int(count){
                    if let money = moneys[i].text, let moneyV = Int(money){
                        sum = sum + countV * moneyV
                    }
                }
            }
            TotalDollars.text = "\(sum)"
            
                    }
        
    }
}

