//
//  ViewController.swift
//  ExampleMinimalPlayer
//
//  Created by Tewodros Mengesha on 05/03/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

/**
 * OrionSimpleVideoPlayer implements a minimal Orion1 video player. It plays
 * a video file from url/local directory using Orion1View's default settings.
 *
 * Features:
 * - Plays one hardcoded 360x180 equirectangular video
 * - Auto-starts playback on load
 * - Stops after playback is finished
 * - Sensor fusion (acc+mag+gyro+touch)
 * - Panning (gyro, swipe)
 * - Zooming (pinch)
 * - Fullscreen view locked to landscape
 */

import UIKit

class ViewController: UIViewController, Orion1ViewDelegate
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let orionView = Orion1View(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
        orionView.delegate = self
        view.addSubview(orionView)
        
        //License URL
        let path: String? = Bundle.main.path(forResource: "Orion360_SDK_Basic_iOS_Trial_finwe.ExampleMinimalPlayer.lic", ofType: nil)
        let licenseUrl = URL(fileURLWithPath: path ?? "")
        
        /* Video from URL */
        let videoUrl = URL(string: "https://player.vimeo.com/external/201193129.hd.mp4?s=b88f95dd058b21dac7829723f4dac32c26820900&profile_id=119")
        orionView.initVideo(with: videoUrl, previewImageUrl: nil, licenseFileUrl: licenseUrl)
        
        /*
         Video from local directory
         let filePath = Bundle.main.path(forResource: "fileName", ofType: ".VideExtension")
         let videoUrl = NSURL(fileURLWithPath: filePath!)
         orionView.initVideo(with: videoUrl as URL!, previewImageUrl: nil, licenseFileUrl: licenseUrl)
         */
        
    }
    
    //Orion1View delegate functions
    func orion1ViewVideoDidReachEnd(_ orion1View: Orion1View)
    {
    }
    
    func orion1ViewReady(toPlayVideo orion1View: Orion1View)
    {
        orion1View.play(0.0)
    }
    
    func orion1ViewDidUpdateProgress(_ orion1View: Orion1View, currentTime: CGFloat, availableTime: CGFloat, totalDuration: CGFloat)
    {
    }
    
    func orion1ViewDidChangeBufferingStatus(_ orion1View: Orion1View, buffering: Bool)
    {
    }
    
}


