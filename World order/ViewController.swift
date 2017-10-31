//
//  ViewController.swift
//  World order
//
//  Created by Huy Lê on 26/10/17.
//  Copyright © 2017 Huy Lê. All rights reserved.
//

import UIKit

class Round {
    let question: String
    let options: [String]
    let answer: Int
    
    init(question: String, options: [String], answer: Int) {
        self.question = question
        self.options = options
        self.answer = answer
    }
}

class ViewController: UIViewController {
    let data: Round = Round(question: "Who is Huy?", options: ["Huy", "Quang", "Thinh", "Anh"], answer: 0)
    
    @IBOutlet weak var question: UITextView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    @IBOutlet weak var option5: UIButton!
    @IBOutlet weak var option6: UIButton!
    
    var options = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        options.append(option1)
        options.append(option2)
        options.append(option3)
        options.append(option4)
        options.append(option5)
        options.append(option6)
        
        question.text = data.question
        question.isUserInteractionEnabled = false
        question.font = UIFont(name: (question.font?.fontName)!, size: UIScreen.main.bounds.width / 8)
        
        for i in 0...5 {
            if (i < 4) {
                options[i].setTitle(data.options[i], for: UIControlState.normal)
            } else {
                options[i].setTitle("", for: UIControlState.normal)
            }
            options[i].titleLabel?.font = UIFont(name: (question.font?.fontName)!, size: UIScreen.main.bounds.width / 16)
        }
    }
    
    func press(_ option: Int) -> Bool {
        options[data.answer].setTitleColor(UIColor.green, for: UIControlState.normal)
        
        for i in 0...5 {
            options[i].isUserInteractionEnabled = false
        }
        
        if (option == data.answer) {
            return true
        } else {
            options[option].setTitleColor(UIColor.red, for: UIControlState.normal)
            return false
        }
    }
    
    @IBAction func pressButton1(_ sender: Any) {
        press(0)
    }
    
    @IBAction func pressButton2(_ sender: Any) {
        press(1)
    }
    
    @IBAction func pressButton3(_ sender: Any) {
        press(2)
    }
    
    @IBAction func pressButton4(_ sender: Any) {
        press(3)
    }
    
    @IBAction func pressButton5(_ sender: Any) {
        press(4)
    }
    
    @IBAction func pressButton6(_ sender: Any) {
        press(5)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
