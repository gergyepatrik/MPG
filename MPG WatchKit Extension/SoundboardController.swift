//
//  SoundboardController.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2022. 03. 21..
//

import WatchKit
import AVFoundation
import Foundation


class SoundboardController: WKInterfaceController, SoundPlaying {
    
    var audioPlayer: AVAudioPlayer?
    
 

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
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
    
}
