//
//  ViewController1.swift
//  ScrollView
//
//  Created by TATSUYA YAMAGUCHI on 2020/04/28.
//  Copyright © 2020 TATSUYA YAMAGUCHI. All rights reserved.
//

// 1. UIScrollView in safe area
// Set top, bottom, leading, trailing to scrollView!

// Tap the view to close.


import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedView(sender: AnyObject) {

        dismiss(animated: true)
    }
}
