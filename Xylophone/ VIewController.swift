//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(tag: sender.tag)
        print(sender.tag)
    }
    
    func playSound(tag : Int)
    {
        //Sets up the location where the sound is
        let soundURL = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")
        
        do {
            //Set up the audio player with content of sound URL
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

