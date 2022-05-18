//
//  YogaTimer.swift
//  Stretch+Paws
//
//  Created by Ivy  Chen  on 5/17/22.
//

import Foundation
import AVFoundation

// what kind of data typs should this be? a class or a struct?
// where does the timer need to be shared?

class YogaTimer: ObservableObject {
    // timer states
    @Published var timerActive = false
    @Published var timerPause = false
    @Published var timerEnded = false
    @Published var timerDuration = 30
    
    var yogaTimer = Timer()
    var audioPlayer: AVAudioPlayer?
    
    // timer functionality
    
    // start the timer
    func startTimer() {
        // timer becomes active
        timerActive = true
        timerPause = false
        timerEnded = false
        yogaTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true,
            block: { Timer in
        // remove a second from timerDuration & loop over
            self.timerDuration -= 1
        // if the timer gets to 0, stop the timer
            if self.timerDuration == 0 {
                self.stopTimer()
            }
        })
    }
    
    // pause the timer
    func pauseTimer() {
        // timer stops being active
        timerActive = false
        // timer becomes paused
        timerPause = true
        // timer stops running
        yogaTimer.invalidate()
    }
    // end the timer
    func stopTimer() {
        // play a sound
        playSound()
        // timer ends
        timerEnded = true
        // timer stops being active
        timerActive = false
        // timer stops running
        yogaTimer.invalidate()
        // timer duration resets ready for the next time we run it
        timerDuration = 30
    }
    
    // play a sound
    func playSound() {
        func playSound(sound: String, type: String) {
            if let path = Bundle.main.path(forResource: sound, ofType: type) {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:
                    path))
                    audioPlayer?.play()
                } catch {
                    print("ERROR")
                }
            }
        }
    }
    
    // timer styles
    
    func setTitleText() -> String {
        if timerEnded {
            return "You did it! Nice job!"
        } else {
            return "Hold that pose"
        }
    }
    
    func setDescriptionText() -> String {
        if timerEnded {
            return "Purrrfect!"
            
        } else {
            return "Try staying in this pose for 30 sec. If you need to come out sooner, that's ok."
        }
    }
    
}
