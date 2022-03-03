//
//  PortraitInterfaceController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2021. 11. 15..
//

import Foundation
import WatchKit



class PortraitInterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBOutlet  var label: WKInterfaceLabel!
    
    /*
    @IBAction func printLabel(){
        label.setTextColor(UIColor.blue)
        label.setText("random")
    }
     */
  
    
       
}
