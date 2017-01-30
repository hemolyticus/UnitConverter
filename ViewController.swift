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
        
        //remove contents of popuplist
        popUpList.removeAllItems()
        
        //add items to popuplist
        popUpList.addItem(withTitle: "Inches and Centimeters")
        popUpList.addItem(withTitle: "Pounds and Kilograms")
        popUpList.addItem(withTitle: "Celsius and Farenheit")
        
        //select initial selection
        popUpList.selectItem(at: 0)
        
        //choose a radio state
        radio1.state =  NSOnState
        
        

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func radioChanged(_ sender: NSButton) {
    }
    
    @IBAction func popUpListChanged(_ sender: Any) {
    }
    
    @IBAction func txtValueChanged(_ sender: Any) {
    }
    
}

