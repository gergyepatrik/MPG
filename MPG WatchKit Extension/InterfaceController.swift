//
//  InterfaceController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2021. 11. 11..
//

import WatchKit
import AVFoundation


class InterfaceController: WKInterfaceController {
    
    // ? before operations of methods means optional value
    // If the value before the ? is nil(nullpointer) everything after
    // the ? is ignored and the value of the whole expression is nil
    // Otherwise, the optional value is unwrapped, and everything after
    // the ? acts on the unwrapped value. If the optional does contain a
    // value, accessing the value is possible with the ! at the end of the
    // optional's name

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBAction func portraitTap() {
        self.pushController(withName: "Portrait", context: nil)
    }
    
    @IBAction func landscapeTap() {
        self.pushController(withName: "Landscape", context: nil)
    }
    
    
    @IBAction func streetTap() {
        self.pushController(withName: "Street", context: nil)
    }
    
    
    @IBAction func natureTap() {
        self.pushController(withName: "Nature", context: nil)
    }
    


}
