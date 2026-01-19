//
//  ViewController.swift
//  HomeUI
//
//  Created by Omkar  on 1/16/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstnumber: UITextField!
    @IBOutlet weak var secondnumber: UITextField!
    @IBOutlet weak var showAnswer: UITextField!
    
    
    @IBAction func totalSum(_ sender: Any) {
            guard let text1 = firstnumber.text,let num1 = Int(text1),
                  let text2 = secondnumber.text, let num2 = Int(text2)
            else {
                return
            }
            let sum = num1 + num2
            showAnswer.text = "\(sum)"
    }
    
    @IBAction func clearDataAction( sender: Any ) {
        showAnswer.text = ""
        firstnumber.text = ""
        secondnumber.text = ""
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showAnswer.text = ""
    }


}

