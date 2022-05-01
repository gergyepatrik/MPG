//
//  ComplicationController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2021. 11. 11..
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Complication Configuration

    func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        let descriptors = [
            CLKComplicationDescriptor(identifier: "complication", displayName: "MPG", supportedFamilies: CLKComplicationFamily.allCases)
            // Multiple complication support can be added here with more descriptors
        ]
        
        // Call the handler with the currently supported complication descriptors
        handler(descriptors)
    }
    
    func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor]) {
        // Do any necessary work to support these newly shared complication descriptors
    }

    // MARK: - Timeline Configuration
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        // Call the handler with the last entry date you can currently provide or nil if you can't support future timelines
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        // Call the handler with your desired behavior when the device is locked
        handler(.showOnLockScreen)
    }

    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after the given date
        handler(nil)
    }

    // MARK: - Sample Templates
    
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
       
        // This method will be called once per supported complication, and the results will be cached
        
        /*
        let line1 = CLKSimpleTextProvider(text: "Run MPG App")
        let line2 = CLKSimpleTextProvider(text: "Tap to open")
        
        
        switch complication.family{
            
        case .circularSmall:
            let circularSmall = CLKComplicationTemplateCircularSmallStackText(line1TextProvider: line1, line2TextProvider: line2)
            handler(circularSmall)
            
        case .extraLarge:
            let extraLarge = CLKComplicationTemplateExtraLargeSimpleText(textProvider: line1)
            handler(extraLarge)
            
        case .graphicBezel:
            let graphicBezel = CLKComplicationTemplateGraphicBezelCircularText(circularTemplate: CLKComplicationTemplateGraphicCircularStackText(line1TextProvider: line1, line2TextProvider: line1), textProvider: line1)
            handler(graphicBezel)
            
        case .modularSmall:
            let modularSmall = CLKComplicationTemplateModularSmallStackText(line1TextProvider: line1, line2TextProvider: line2)
            handler(modularSmall)
            
        case .modularLarge:
            let modularLarge = CLKComplicationTemplateModularLargeStandardBody(headerTextProvider: line1, body1TextProvider: line2)
            handler(modularLarge)
            
        case .utilitarianSmall:
            let utilitiarianSmall = CLKComplicationTemplateUtilitarianSmallRingText(textProvider: line1, fillFraction: 1.5, ringStyle: CLKComplicationRingStyle.closed)
            handler(utilitiarianSmall)
            
        case .utilitarianSmallFlat:
            let utilitarianSmallFlat = CLKComplicationTemplateUtilitarianSmallFlat(textProvider: line1)
            handler(utilitarianSmallFlat)
            
        case .utilitarianLarge:
            print("Complication type not supported")
            
        case .graphicCorner:
            let graphicCorner = CLKComplicationTemplateGraphicCornerStackText(innerTextProvider: line1, outerTextProvider: line2)
            handler(graphicCorner)
            
        case .graphicCircular:
            let graphicCircular = CLKComplicationTemplateGraphicCircularStackText(line1TextProvider: line1, line2TextProvider: line2)
            handler(graphicCircular)
            
        case .graphicRectangular:
            let graphicRectangular = CLKComplicationTemplateGraphicRectangularStandardBody(headerTextProvider: line1, body1TextProvider: line2)
            handler(graphicRectangular)
            
        case .graphicExtraLarge:
            let graphicExtraLarge = CLKComplicationTemplateGraphicExtraLargeCircularStackText(line1TextProvider: line1, line2TextProvider: line2)
            handler(graphicExtraLarge)
            
        @unknown default:
            print("Error when loading complication")
        }
         */
      
    }
     
    
   
}
