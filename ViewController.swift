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
        
        //trigger the action method
        popUpListChanged(self)
        
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
        switch popUpList.indexOfSelectedItem {
        case 0:
            radio1.title = "to Inches"
            radio2.title = "to Centimeters"
        case 1:
            radio1.title = "to Pounds"
            radio2.title = "to Kilograms"
            
        case 2:
            radio1.title = "to Celsius"
            radio2.title = "to Farenheit"
            
        default:
            break
        }
    }
    
    @IBAction func txtValueChanged(_ sender: Any) {
        switch popUpList.indexOfSelectedItem {
        case 0:
            if radio1.state == NSOnState {
                txtResult.stringValue = String(format: "%.2f", txtValue.doubleValue / 2.51)
            }else{
                txtResult.stringValue = String(format: "%.2f", txtValue.doubleValue * 2.51)
            }
            
        case 1:
            if radio1.state == NSOnState {
                txtResult.stringValue = String(format: "%.2f", txtValue.doubleValue * 2.2)
            }else{
                txtResult.stringValue = String(format: "%.2f", txtValue.doubleValue / 2.2)
            }
            
        case 2:
            if radio1.state == NSOnState {
                txtResult.stringValue = String(format: "%.2f", (txtValue.doubleValue - 32 ) * 5/9)
            }else{
                txtResult.stringValue = String(format: "%.2f", txtValue.doubleValue * 9/5 + 32)
            }
            
        default:
            break
            
        
            
        
        }
    }
}

