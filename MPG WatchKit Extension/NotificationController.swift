//
//  NotificationController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2021. 11. 11..
//

import WatchKit
import Foundation
import UserNotifications


class NotificationController: WKUserNotificationInterfaceController {

    override init() {
        // Initialize variables here.
        super.init()
        
        // Configure interface objects here.
  
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    override func didReceive(_ notification: UNNotification) {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        
        
        func getRandom(inputString: String) -> String{
        // Initializing empty string array
        var allLines:[String] = []
        // Putting the lines of the text file into the elements of the array
        if let startWordsPath = Bundle.main.path(forResource: inputString, ofType: "txt")
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
        // Setting the variable to the random chosen value
        let morningContentGenerated = randomElement
        return morningContentGenerated
        }
        
        
        
        
        // Setting the content of morning notifications
        let morningContent = UNMutableNotificationContent()
        morningContent.title = "Daily motivation"
        morningContent.body = getRandom(inputString: "morningcontent")
        
        
        // Setting the content of night notifications
        let nightContent = UNMutableNotificationContent()
        nightContent.title = "Time to chill"
        nightContent.body = getRandom(inputString: "nightcontent")
        
        // Configuring the recurring morning date
        var morningDateComponents = DateComponents()
        morningDateComponents.calendar=Calendar.current
        
        // Configuring the recurring night date
        var nightDateComponents = DateComponents()
        nightDateComponents.calendar=Calendar.current
        
        // Setting the morning hour to 7am
        morningDateComponents.hour = 18
        morningDateComponents.minute = 49
        
        // Setting the night hour to 6pm
        nightDateComponents.hour = 18
        nightDateComponents.minute = 50
        
        // Create the trigger as a repeating event for mornings
        let morningTrigger = UNCalendarNotificationTrigger(dateMatching: morningDateComponents, repeats: true)
        
        // Create the trigger as a repeating event for nights
        let nightTrigger = UNCalendarNotificationTrigger(dateMatching: nightDateComponents, repeats: true)
               
        // Create the request for mornings
        let uuidMorningString = UUID().uuidString
        let morningRequest = UNNotificationRequest(identifier: uuidMorningString, content: morningContent, trigger: morningTrigger)
        
        // Create the request for nights
        let uuidNightString = UUID().uuidString
        let nightRequest = UNNotificationRequest(identifier: uuidNightString, content: nightContent, trigger: nightTrigger)
        
        // Schedule the request with the system for the morning notifications
        let morningNotificationCenter = UNUserNotificationCenter.current()
        morningNotificationCenter.add(morningRequest) {(error) in if error != nil {
            // Handle errors
            print("Something went wrong with the morning notification!!!!!")
            
        }}
        
        // Schedule the request with the system for the night notifications
        let nightNotificationCenter = UNUserNotificationCenter.current()
        nightNotificationCenter.add(nightRequest) {(error) in if error != nil {
            // Handle errors
            print("Something went wrong with the morning notification!!!!!")
            
        }}
        
        
        
        
        
    }
    
    
}
