//
//  ViewController.swift
//  eggTimer
//
//  Created by West Kraemer on 1/12/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    func decreaseTimer() {
        
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: Any) {
    }
    
    @IBAction func plusTen(_ sender: Any) {
    }
    
    @IBAction func minusTen(_ sender: Any) {
    }
    
    @IBAction func reset(_ sender: Any) {
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

