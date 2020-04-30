//
//  ViewController3.swift
//  NSScrollView
//
//  Created by TATSUYA YAMAGUCHI on 2020/04/28.
//  Copyright © 2020 TATSUYA YAMAGUCHI. All rights reserved.
//
// 3.  NSScrollView with code (fixed view size)
// when you know the size of the view


import Cocoa

class ViewController3: NSViewController {

    @IBOutlet weak var scrollView: NSScrollView!
    private var documentView: NSView!
    
    private let documentViewSize = CGSize(width: 500, height: 1000)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupScrollView()
        setupDocumentView()
        setupViews()
    }
    
    private func setupScrollView() {
        scrollView.backgroundColor = NSColor.black
    }
    
    private func setupDocumentView() {
        
        assert(scrollView.documentView != nil, "scrollView.documentView is nil")
        documentView = scrollView.documentView!
        
        documentView.backgroundColor = NSColor.white
        
        documentView.frame = CGRect(x: 0,y: 0,
                                    width: documentViewSize.width,
                                    height: documentViewSize.height)
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
        topLabel.centerXAnchor.constraint(equalTo: documentView.centerXAnchor).isActive = true
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
        bottomLabel.bottomAnchor.constraint(equalTo: documentView.bottomAnchor, constant: -20).isActive = true
    }
}
