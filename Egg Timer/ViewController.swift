//
//  ViewController.swift
//  Egg Timer
//
//  Created by Rishav Pandey on 05/12/16.
//  Copyright © 2016 AviaBird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var value = 300

    @IBOutlet var counterValue: UILabel!
   
    @IBAction func pauseCounter(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func playCounter(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
    }
    
    @IBAction func resetCounter(_ sender: AnyObject) {
        value = 300
        counterValue.text = "\(value)"
    }

    @IBAction func subTen(_ sender: AnyObject) {
        value -= 10
        counterValue.text = "\(value)"
    }
    
    @IBAction func addTen(_ sender: AnyObject) {
        value += 10
        counterValue.text = "\(value)"
    }
    
    func counter() {
        counterValue.text = "\(value)"
        value -= 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterValue.text = "\(value)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

