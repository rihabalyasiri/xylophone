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
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("start")
        sender.alpha = 0.5
        playSound(sound: sender.currentTitle)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
           // Bring's sender's opacity back up to fully opaque
           sender.alpha = 1.0
            print("end")
        }
    }
    
    func playSound(sound: String?) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

