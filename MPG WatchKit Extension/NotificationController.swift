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
        
        // Setting the content of the notification
        let content = UNMutableNotificationContent()
        content.title="Daily motivation"
        content.body="Every day at 7am"
        
        // Configuring the recurring date
        var dateComponents = DateComponents()
        dateComponents.calendar=Calendar.current
        
        // Setting the day to tuesday, in Swift the week doesn't start on monday
        dateComponents.weekday = 3
        // Setting the hour
        dateComponents.hour = 14
        
        // Create the trigger as a repeating event
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // Create the request
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Schedule the request with the system
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) {(error) in if error != nil {
            // Handle errors
            print("Something went wrong with the notification!!!!!")
            
        }}
        
        
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
        
    }
    
    
}
