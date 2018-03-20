//
//  ViewController.swift
//  ExampleOrionHotspot
//
//  Created by Tewodros Mengesha on 20/03/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

/**
 * This is an example of Orion1 Hotspot.
 *
 * Features:
 * - Plays one hardcoded 360x180 equirectangular image
 * - Image can be from URL or local repository
 * - Hotspot is created on the image, and when user clicks on hotspot it displays an alert with Ok button
 * - Sensor fusion (acc+mag+gyro+touch)
 * - Panning (gyro, swipe)
 * - Zooming (pinch)
 * - Fullscreen view locked to landscape
 
 */

import UIKit

class ViewController: UIViewController, Orion1ViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        //Create an instance of Orion1View and initialize it as follows
        let orionView = Orion1View(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
        orionView.delegate = self
        view.addSubview(orionView)
        //Add license URL
        let path: String? = Bundle.main.path(forResource: "Orion360_SDK_Basic_iOS_Trial_fi.finwe.ExampleOrionHotspot.lic", ofType: nil)
        let licenseUrl = URL(fileURLWithPath: path ?? "")
        
        
        //Image URL
        let photoUrl = URL(string: "https://s3.amazonaws.com/orion360-us/Orion360_example_image_1_4096x2048.jpg")
        let imageUrl = Bundle.main.url(forResource: "hotSpot", withExtension: "jpg")
        
        // Set Image and license url !!!
        orionView.initImage(with: photoUrl, licenseFileUrl: licenseUrl)
        
        //Hotspot
        orionView.createTag(1)
        orionView.setTagLocation(1, yawAngle: 15, pitchAngle: -20)
        orionView.setTagScale(1, scale: 3)
        orionView.setTagAssetURL(1, tagAssetURL: imageUrl)
        orionView.setTagAlpha(1, alpha: 0.5)
        
    }
    //Hotspot action
    func orion1ViewTagDidSelect(_ orion1View: Orion1View!, tagIndex: UInt) {
        let alertController = UIAlertController(
            title: "Hotspot Alert", message: "Hello there, I am hotspot action example using OrionSDK basic", preferredStyle: .alert)
        let defaultAction = UIAlertAction(
            title: "Ok", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

