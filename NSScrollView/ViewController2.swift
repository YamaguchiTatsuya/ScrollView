//
//  ViewController2.swift
//  NSScrollView
//
//  Created by TATSUYA YAMAGUCHI on 2020/04/28.
//  Copyright © 2020 TATSUYA YAMAGUCHI. All rights reserved.
//
// 2. NSScrollView with code
// You put only a scrollView in storyboard, and setup some views here.
// And you do NOT know how the view's height would be.



import Cocoa

class ViewController2: NSViewController {

    @IBOutlet weak var scrollView: NSScrollView!
    private var documentView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.backgroundColor = NSColor.black
        setupDocumentView()
        setupViews()
    }
    
    private func setupDocumentView() {
        
        assert(scrollView.documentView != nil, "scrollView.documentView is nil")
        documentView = scrollView.documentView!
        //this is the same view in 'View' object in storyboard
        
        documentView.backgroundColor = NSColor.white
        
        //to eliminate height setting in storyboard
        documentView.translatesAutoresizingMaskIntoConstraints = false
        
        // just set width constraint
        documentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }
    
    
    
    private func setupViews() {

        //(1) top label
        let topLabel = NSTextField()
        topLabel.stringValue = "top of view"
        topLabel.alignment = .center
        topLabel.isEditable = false
        topLabel.isBordered = false
        
        documentView.addSubview(topLabel)
        
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.widthAnchor.constraint(equalTo: documentView.widthAnchor).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: documentView.leadingAnchor).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: documentView.trailingAnchor).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        topLabel.topAnchor.constraint(equalTo: documentView.topAnchor, constant: 20).isActive = true
        
        
        //(2) bottom label
        let bottomLabel = NSTextField()
        bottomLabel.stringValue = "bottom of view"
        bottomLabel.alignment = .center
        bottomLabel.isEditable = false
        bottomLabel.isBordered = false
        
        documentView.addSubview(bottomLabel)
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.widthAnchor.constraint(equalTo: documentView.widthAnchor).isActive = true
        bottomLabel.centerXAnchor.constraint(equalTo: documentView.centerXAnchor).isActive = true
        bottomLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 1000).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: documentView.bottomAnchor, constant: -20).isActive = true
    }
    
}
