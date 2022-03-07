//
//  GeneratorController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2022. 03. 07..
//

import WatchKit
import Foundation


class GeneratorController: WKInterfaceController {
    
    // Outlet for label to be connected to the code
    @IBOutlet weak var tipLabel: WKInterfaceLabel!
       

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        // Printing to console to make sure the transition works
        print("Activatior successful")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    // Function to make the button generate a random tip
    @IBAction func generateButtonPressed() {
        // Initializing empty string array
        var allLines:[String] = []
        // Putting the lines of the text file into the elements of the array
        if let startWordsPath = Bundle.main.path(forResource: "tips", ofType: "txt")
                {
                    if let startWords = try? String(contentsOfFile: startWordsPath)
                    {
                        allLines = startWords.components(separatedBy: "\n")
                        print ("allLines count = \(allLines.count)")
                    }
                    else
                    {
                        allLines = ["error"]
                    }
                }
        // Xcode adds an extra line after the last line
        // Filtering for empty lines
        allLines = allLines.filter({ $0 != ""})
        // Choosing a random line from the collection
        let randomElement = allLines.randomElement()!
        // Setting the label to the random chosen value
        tipLabel.setText(randomElement)
    }
    
}
