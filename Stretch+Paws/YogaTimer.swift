//
//  YogaTimer.swift
//  Stretch+Paws
//
//  Created by Ivy  Chen  on 5/17/22.
//

import Foundation

// what kind of data typs should this be? a class or a struct?
// where does the timer need to be shared?

class YogaTimer {
    // timer states
    var timerActive = false
    var timerPause = false
    var timerEnded = false
    var timerDuration = 30
    
    var yogaTimer = Timer()
    
    // timer functionality
    
    // start the timer
    func startTimer() {
        // timer becomes active
        timerActive = true
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
    func stopTimer(){
        // play a sound
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
        // play audio file
    }
    
    // countdown
}