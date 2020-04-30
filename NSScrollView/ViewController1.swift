//
//  ViewController1.swift
//  NSScrollView
//
//  Created by TATSUYA YAMAGUCHI on 2020/04/28.
//  Copyright © 2020 TATSUYA YAMAGUCHI. All rights reserved.
//
// 1. NSScrollView with storyboard

// Scroll View
//    |
//     - Clip View
//         |
//          - View

// 1) Put some labels(eg) in the View, and set each label's constraints(top, bottom, leading, trailing) to the View.
// 2) Confirm the Clip View's 'Layout' is 'Automatic'.
// 3) Confirm the View's 'Layout' is 'Translates Mask Into Constraints'
//    and Set 'Autoresizing' as you need.



import Cocoa

class ViewController1: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = NSColor(white: 0.8, alpha: 1)
    }
    
}

extension NSView {
    var backgroundColor: NSColor? {
        get {
            guard let color = layer?.backgroundColor else { return nil }
            return NSColor(cgColor: color)
        }
        set {
            wantsLayer = true
            layer?.backgroundColor = newValue?.cgColor
        }
    }
}
