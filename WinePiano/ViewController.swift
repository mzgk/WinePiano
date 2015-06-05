//
//  ViewController.swift
//  WinePiano
//
//  Created by Mizugaki on 2015/06/05.
//  Copyright (c) 2015年 ast. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        play("BGM.mp3")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func play(soundName: String) {
        let soundPath = NSBundle.mainBundle().bundlePath.stringByAppendingPathComponent(soundName)
        let url:NSURL? = NSURL.fileURLWithPath(soundPath)
        player = AVAudioPlayer(contentsOfURL: url, error: nil)
        player?.numberOfLoops = -1  // 無限ループ
        player?.prepareToPlay()     // 再生時のラグをなくす
        player?.play()              // 再生
    }
}

