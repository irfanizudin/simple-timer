//
//  ViewController.swift
//  SimpleTimer
//
//  Created by Irfan Izudin on 31/03/22.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    @IBOutlet weak var tickLabel: UILabel!
    
    @IBOutlet weak var playButton: UIBarButtonItem!
    var initialTime = 0
    
    @objc func tick () {
        initialTime += 1
        tickLabel.text = String(initialTime)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func playDidPress(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tick), userInfo: nil, repeats: true)
        playButton.isEnabled = false
    }
    
    @IBAction func pauseDidPress(_ sender: Any) {
        timer.invalidate()
        playButton.isEnabled = true
    }
    
    @IBAction func plusDidPress(_ sender: Any) {
        initialTime += 10
        tickLabel.text = String(initialTime)
    }
    
    
    @IBAction func minusDidPress(_ sender: Any) {
        initialTime -= 10
        tickLabel.text = String(initialTime)
    }
    
    
    @IBAction func resetDidPress(_ sender: Any) {
        initialTime = 0
        timer.invalidate()
        tickLabel.text = String(initialTime)
        playButton.isEnabled = true
    }
    
}

