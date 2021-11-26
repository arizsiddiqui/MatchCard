//
//  SoundManager.swift
//  MatchApp
//
//  Created by Ariz Siddiqui on 23/02/21.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    enum SoundEffect {
        
        case flip
        case match
        case nomatch
        case shuffle
        
    }
    func playSound(effect: SoundEffect) {
        
        var soundFileName = ""
        
        switch effect {
        
        case .flip: soundFileName = "cardflip"
            
        case .match: soundFileName = "dingcorrect"
            
        case .nomatch: soundFileName = "dingwrong"
            
        case .shuffle: soundFileName = "shuffle"
            
        }
        
        let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: ".wav")
        
        guard bundlePath != nil else {
            
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            audioPlayer?.play()
        }
        
        catch {
            
            print("Couldn't create an audio player")
            return
        }
    }
}
