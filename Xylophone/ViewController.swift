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
        var soundName: String
            switch sender.tag {
            case 1:
                soundName = "C"
            case 2:
                soundName = "D"
            case 3:
                soundName = "E"
            case 4:
                soundName = "F"
            case 5:
                soundName = "G"
            case 6:
                soundName = "A"
            case 7:
                soundName = "B"
            default:
                return
            }
            print("I got pressed. \(soundName) button")
            playSound(fileName: soundName, fileExtension: "wav")
        }
        
    }
    
    var audioPlayer: AVAudioPlayer?

    func playSound(fileName: String, fileExtension: String) {
        if let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("Couldn't load the audio file.")
            }
        }
    }



