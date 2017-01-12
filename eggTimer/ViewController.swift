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
    
    //staring time
    var time = 210
    
    // As long as the Timer is greater than zero, count down by 1. Once the timer hits zero, it stops.
    func decreaseTimer() {
        
        if time > 0 {
        
            time -= 1
        
            timerLabel.text = String(time)
        
        } else {
            
            timer.invalidate()
            
        }
        
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
    }
    
    //If time is greater than 210, the add button won't work.
    @IBAction func plusTen(_ sender: Any) {
        
        if time <= 200 {
        
        time += 10
        
        timerLabel.text = String(time)
        }
    }
    
    
    //If time is greater than 10 seconds, this button will take ten seconds off the count.
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {
        
            time -= 10
        
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        
        time = 210
        
        timerLabel.text = String(time)
        
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

