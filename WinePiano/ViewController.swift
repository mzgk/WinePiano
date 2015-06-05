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
    var soundManager = SEManager()

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

    @IBAction func wineTapped(sender: UIButton) {
        var sound:String = ""

        switch sender.tag {
        case 1:
            println("ワイングラスボタン\(sender.tag)")
            sound = "1.mp3"
        case 2:
            println("ワイングラスボタン\(sender.tag)")
            sound = "2.mp3"
        case 3:
            println("ワイングラスボタン\(sender.tag)")
            sound = "3.mp3"
        case 4:
            println("ワイングラスボタン\(sender.tag)")
            sound = "4.mp3"
        case 5:
            println("ワイングラスボタン\(sender.tag)")
            sound = "5.mp3"
        default:
            println("どのボタンでもありません")
        }
        soundManager.sePlay(sound)
    }
}

