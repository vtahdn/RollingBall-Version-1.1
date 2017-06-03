//
//  ViewController.swift
//  RollingBall Version 1.1
//
//  Created by Viet Anh Doan on 6/3/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ball: UIImageView!
    var forward = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: 1/12, target: self, selector: #selector(roll), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func roll() -> Void {
        if forward {
            ball.transform = ball.transform.rotated(by: -1)
            ball.center.x += 32
            if ball.center.x >= view.bounds.size.width - 32 {
                forward = false
            }
        }
        else {
            ball.transform = ball.transform.rotated(by: 1)
            ball.center.x -= 32
            if ball.center.x <= 32 {
                forward = true
            }
        }
    }
}

