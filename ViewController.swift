//
//  ViewController.swift
//  UnitConverter
//
//  Created by Mel John del Barrio on 30/01/17.
//  Copyright © 2017 Mel John del Barrio. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var popUpList: NSPopUpButton!
    
    @IBOutlet weak var txtValue: NSTextField!
    
    @IBOutlet weak var txtResult: NSTextField!
    
    @IBOutlet weak var radio1: NSButton!
    
    @IBOutlet weak var radio2: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func radioChanged(_ sender: Any) {
        
    }
}

