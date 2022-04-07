//
//  File.swift
//  MPG WatchKit Extension
//
//  Created by Patrik Gergye on 2022. 04. 06..
//

import AVFoundation

// Protocol for making playing sounds easier with less code
protocol SoundPlaying: AnyObject{
    var audioPlayer: AVAudioPlayer?{ get set }
}

// Extension for playing sounds
extension SoundPlaying{
    // Function that takes a string(name of the file)
    func playSound(named name: String){
        // Making a guard variable to store the url of the sounds files(name and extension)
        // If the sound cannot be found it throws a fatalERROR and outputs to the console
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else{
            fatalError("Unable to find sound file \(name).mp3 ")
        }
        
        // Passing the url to the audio player
        try? audioPlayer = AVAudioPlayer(contentsOf: url)
        // Preparing the player to play the audio
        audioPlayer?.prepareToPlay()
        // Playing the audio
        audioPlayer?.play()
    }
}
