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
    
    var moneys = [UILabel]()
    var counts = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        moneys = [CakeMoney01,CakeMoney02,CakeMoney03,CakeMoney04,CakeMoney05,CakeMoney06]
        
        counts =    [CakeCount01,CakeCount02,CakeCount03,CakeCount04,CakeCount05,CakeCount06]
    }

    @IBAction func CakePlus01(_ sender: Any) {
        add(N: 0)
    }
    @IBAction func CakeSub01(_ sender: Any) {
        sub(N: 0)
    }
    @IBAction func CakePlus02(_ sender: Any) {
        add(N: 1)
    }
    
    @IBAction func CakeSub02(_ sender: Any) {
        sub(N: 1)
    }
    @IBAction func CakePlus03(_ sender: Any) {
        add(N: 2)
    }
    
    @IBAction func CakeSub03(_ sender: Any) {
        sub(N: 2)
    }
    
    @IBAction func CakePlus04(_ sender: Any) {
        add(N: 3)
    }
    @IBAction func CakeSub04(_ sender: Any) {
        sub(N: 3)
    }
    @IBAction func CakePlus05(_ sender: Any) {
        add(N: 4)
    }
    @IBAction func CakeSub05(_ sender: Any) {
        
        sub(N: 4)
    }
    @IBAction func CakePlus06(_ sender: Any) {
        add(N: 5)
    }
    @IBAction func CakeSub06(_ sender: Any) {
        sub(N: 5)
    }
    func add(N:Int){
        let money:Int = ( Int(counts[N].text!) ?? 0 ) + 1
       counts[N].text = "\(money)"
        calculateSum()
    }
    func sub(N:Int){
        if let text = counts[N].text, let value = Int(text)
        {
            if(value <= 0){
                counts[N].text = "\(0)"
            }else{
                counts[N].text = "\( value - 1 )"
            }
        }
        calculateSum()
    }
    func calculateSum(){
        if var text = TotalDollars.text,var sum = Int(text){
            sum = 0
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

