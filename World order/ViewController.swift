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
    @IBOutlet weak var question: UITextView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    @IBOutlet weak var xxxx: NSLayoutConstraint!
    
    let data: Round = Round(question: "Who is Huy?", options: ["Huy", "Quang", "Thinh", "Anh"], answer: 0)
    
    var options = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = data.question
        option1.setTitle(data.options[0], for: UIControlState.normal)
        option2.setTitle(data.options[1], for: UIControlState.normal)
        option3.setTitle(data.options[2], for: UIControlState.normal)
        option4.setTitle(data.options[3], for: UIControlState.normal)
        
        options.append(option1)
        options.append(option2)
        options.append(option3)
        options.append(option4)
    }
    
    func press(_ choice: Int) -> Bool {
        if (choice == data.answer) {
            return true
        } else {
            return false
        }
    }
    
    @IBAction func pressButton1(_ sender: Any) {
        if (press(0)) {
            option1.setTitleColor(UIColor.green, for: UIControlState.normal)
        } else {
            option1.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
    }
    
    @IBAction func pressButton2(_ sender: Any) {
        if (press(1)) {
            option2.setTitleColor(UIColor.green, for: UIControlState.normal)
        } else {
            option2.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
    }
    
    @IBAction func pressButton3(_ sender: Any) {
        if (press(2)) {
            option3.setTitleColor(UIColor.green, for: UIControlState.normal)
        } else {
            option3.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
    }
    
    @IBAction func pressButton4(_ sender: Any) {
        if (press(3)) {
            option4.setTitleColor(UIColor.green, for: UIControlState.normal)
        } else {
            option4.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
