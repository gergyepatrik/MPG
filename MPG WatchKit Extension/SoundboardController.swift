//
//  SoundboardController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2022. 03. 21..
//

import WatchKit
import AVFoundation
import Foundation
import UIKit


class SoundboardController: WKInterfaceController, SoundPlaying {
    
    
    // Making an optional audio player
    var audioPlayer: AVAudioPlayer?
    
 

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        print("Page movement successful")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    // Functions that process each button press and play the sounds
    @IBAction func playSoundNoice() {
       playSound(named: "Noice")
    }
    
    @IBAction func playSoundTrain() {
       playSound(named: "Train")
    }
    
    @IBAction func playSoundTroll() {
       playSound(named: "Troll")
    }
    
    @IBAction func playSoundBaby() {
       playSound(named: "BabyCrying")
    }
    
    @IBAction func playSoundWhistle() {
       playSound(named: "Whistle")
    }
    
    @IBAction func playSoundLaugh() {
       playSound(named: "Laugh")
    }
    
    @IBAction func playSoundChina() {
       playSound(named: "China")
    }
    
    
    @IBAction func playSoundDuck() {
        playSound(named: "China")
    }
    
}
