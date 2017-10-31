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
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    @IBOutlet weak var option5: UIButton!
    @IBOutlet weak var option6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
