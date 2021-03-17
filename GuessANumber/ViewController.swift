//
//  ViewController.swift
//  GuessANumber
//
//  Created by Paul Awadalla on 4/25/19.
//  Copyright © 2019 Paul Awadalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numbersArr = ["number1","number2","number3","number4","number5","number6","number7","number8","number9","number10",]

    
    @IBOutlet weak var numberImage: UIImageView!
    
    var numberIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeNumbersImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeNumbersImage()
    }

    @IBAction func numberBtnPressed(_ sender: Any) {
        changeNumbersImage()
    }
    
    func changeNumbersImage() {
        numberIndex = Int.random(in: 0 ... 9)
        numberImage.image = UIImage(named: numbersArr[numberIndex])
        
    }
    
}

