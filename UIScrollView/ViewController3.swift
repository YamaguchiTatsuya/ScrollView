//
//  ViewController3.swift
//  ScrollView
//
//  Created by TATSUYA YAMAGUCHI on 2020/04/28.
//  Copyright © 2020 TATSUYA YAMAGUCHI. All rights reserved.
//

// 3. UIScrollView with code
// When you use code to draw some views.


import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
    }
    
    private func setup() {
        
        //(1) top label
        let topLabel = UILabel()
        topLabel.text = "top of view"
        topLabel.textAlignment = .center
        
        scrollView.addSubview(topLabel)
        
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        topLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true

        
        
        //(2) bottom label
        let bottomLabel = UILabel()
        bottomLabel.text = "bottom of view"
        bottomLabel.textAlignment = .center
        
        scrollView.addSubview(bottomLabel)
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        bottomLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        bottomLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 1000).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20).isActive = true
    }

    @IBAction func tappedView(sender: AnyObject) {

        dismiss(animated: true)
    }

    
}
