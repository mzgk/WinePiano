//
//  SEManager.swift
//  WinePiano
//
//  Created by Mizugaki on 2015/06/05.
//  Copyright (c) 2015年 ast. All rights reserved.
//

import Foundation
import AVFoundation

class SEManager: NSObject {
    var player:AVAudioPlayer?

    func sePlay(soundName: String) {
        let soundPath = NSBundle.mainBundle().bundlePath.stringByAppendingPathComponent(soundName)
        let url:NSURL? = NSURL.fileURLWithPath(soundPath)
        player = AVAudioPlayer(contentsOfURL: url, error: nil)
        player?.prepareToPlay()
        player?.play()
    }
}