//
//  ViewController.swift
//  qnaproject
//
//  Created by 鄭和軒 on 2019/8/19.
//  Copyright © 2019年 鄭和軒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    class Qna {
        let q:String
        let a:String
        init(q: String,a:String){
            self.q = q
            self.a = a
        }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        Question()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var count:Int = 0
    @IBOutlet weak var Qtext: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBAction func nextQ(_ sender: Any) {
        count = count + 1
        if(count == qnaArray.count){
            count = 0
        }
        Question()
    }
    @IBAction func previousQ(_ sender: Any) {
        count = count - 1
        if(count < 0){
            count = qnaArray.count - 1
        }
        Question()
    }
    @IBAction func Answer(_ sender: Any) {
        answer.isHidden = false
    }
    @IBOutlet weak var answer: UILabel!
    var qnaArray = [Qna(q:"《火影忍者》在哪一年開始在日本《週刊少年JUMP》連載?",a:"1999"),
                    Qna(q:"鳴人在教室內的畢業考，考了幾次沒過？",a:"三次"),
                    Qna(q:"卡卡西在生存試驗中看的是親熱系列的那一本？",a:"親熱天堂　中卷"),
                    Qna(q:"TSUNADE 是火影忍者中那個人物的名字?",a:"綱手"),
                    Qna(q:"有「黃色閃光」之稱的人是誰?",a:"波風水門"),
                    Qna(q:"阿凱的腳是什麼時候殘廢的",a:"與斑對打的時候"),
                    Qna(q:"寧次為何而死",a:"為了保護鳴人與雛田"),
                    Qna(q:"誰復活了大蛇丸",a:"佐助"),
                    Qna(q:"曉裡面的面具男是誰",a:"宇智波帶土"),
                    Qna(q:"兵糧丸的作用是什麼",a:"補充查克拉"),
                    Qna(q:"《火影忍者》背景是發生在什麼時代",a:"跨時代"),
                    Qna(q:"《火影忍者》中第一代九尾人柱力是誰",a:"漩渦水戶"),
                    Qna(q:"《火影忍者》中在火影護額一共有幾種戴法",a:"11種"),
                    Qna(q:"自來也的護額是什麼花紋",a:"油字"),
                    Qna(q:"山中井野擅長什麼忍術",a:"心轉心之術"),
                     Qna(q:"《火影忍者》是在哪裡連載的",a:"《集英社》"),
                    ]
    func Question() {
        question.text = qnaArray[count].q
        Qtext.text = "Q \(count+1)"
        answer.text = qnaArray[count].a
        answer.isHidden = true
        question.isHidden = false
    }
}

