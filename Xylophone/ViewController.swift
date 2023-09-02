//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        // Print "Start"
        print("Start")
        
        // Dim the button to half opacity
        sender.alpha = 0.5
        
        // Using GCD to execute code with a delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
            // Restore the button's opacity to fully opaque
            sender.alpha = 1.0
            
            // Print "End"
            print("End")
        }
    }

}
    
    var audioPlayer: AVAudioPlayer?
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    }
    


