//
//  ViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Michael Vilabrera on 9/7/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var vwBlue:UIView!
    var vwRed:UIView!
    var vwGreen:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        makeLayout()
    }
    
    func makeLayout() {
        initViews()
        createConstraints()
    }
    
    func initViews() -> Void {
        // initialize
        vwRed = UIView()
        vwBlue = UIView()
        vwGreen = UIView()
        
        // prepare autolayout
        vwRed.translatesAutoresizingMaskIntoConstraints = false
        vwBlue.translatesAutoresizingMaskIntoConstraints = false
        vwGreen.translatesAutoresizingMaskIntoConstraints = false
        
        // color views
        vwRed.backgroundColor = UIColor.redColor()
        vwBlue.backgroundColor = UIColor.blueColor()
        vwGreen.backgroundColor = UIColor.greenColor()
        
        // add to superview
        self.view.addSubview(vwRed)
        self.view.addSubview(vwBlue)
        self.view.addSubview(vwGreen)
    }
    
    func createConstraints() {
        // views to add constraints to
        let viewsDictionary = Dictionary(dictionaryLiteral: ("red", vwRed),("blue", vwBlue),("green",vwGreen))
        // horizontal constraints
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|[red]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(horizontalConstraints)
        
        // vertical constraints
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|[red]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        self.view.addConstraints(verticalConstraints)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

