//
//  StreetController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2022. 04. 09..
//

import WatchKit
import Foundation


class StreetController: WKInterfaceController {

    @IBOutlet weak var moviePlayer: WKInterfaceMovie!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        // Setting an image that shows when the movie is not playing
        let image = WKImage(imageName: "Gachi")
        moviePlayer.setPosterImage(image)
        
        // Accessing the bundle at the location of the controller itself
        let bundle = Bundle(for: LandscapeController.self)
        // Creating a URL that redirects us to the movie file
        let url = bundle.url(forResource: "test", withExtension: "MOV")
        // Setting movie URL and unwrapping it
        moviePlayer.setMovieURL(url!)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
